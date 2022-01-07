
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_sriov_alias_guid_info_rec_det {int guid_indexes; int method; int all_recs; } ;
struct TYPE_5__ {int ag_work_lock; TYPE_1__* ports_guid; int sa_client; } ;
struct TYPE_6__ {int going_down_lock; TYPE_2__ alias_guid; int is_going_down; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; } ;
struct mlx4_alias_guid_work_context {int port; int block_num; scalar_t__ query_id; int list; int sa_query; int done; struct mlx4_ib_dev* dev; } ;
struct list_head {int dummy; } ;
struct ib_sa_guidinfo_rec {int block_num; int guid_info_list; int lid; } ;
struct ib_port_attr {scalar_t__ state; int lid; } ;
struct ib_device {int dummy; } ;
typedef int ib_sa_comp_mask ;
struct TYPE_4__ {int alias_guid_work; int wq; struct list_head cb_list; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GUID_REC_SIZE ;
 int HZ ;
 scalar_t__ IB_PORT_ACTIVE ;
 int IB_SA_GUIDINFO_REC_BLOCK_NUM ;
 int IB_SA_GUIDINFO_REC_LID ;
 int NUM_ALIAS_GUID_IN_REC ;
 int __mlx4_ib_query_port (struct ib_device*,int,struct ib_port_attr*,int) ;
 int aliasguid_query_handler ;
 int cpu_to_be16 (int ) ;
 scalar_t__ ib_sa_guid_info_rec_query (int ,struct ib_device*,int,struct ib_sa_guidinfo_rec*,int,int ,int,int ,int ,struct mlx4_alias_guid_work_context*,int *) ;
 int init_completion (int *) ;
 int invalidate_guid_record (struct mlx4_ib_dev*,int,int) ;
 int kfree (struct mlx4_alias_guid_work_context*) ;
 struct mlx4_alias_guid_work_context* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del (int *) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ib_sa_guidinfo_rec*,int ,int) ;
 int pr_debug (char*,int,...) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int set_guid_rec(struct ib_device *ibdev,
   u8 port, int index,
   struct mlx4_sriov_alias_guid_info_rec_det *rec_det)
{
 int err;
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct ib_sa_guidinfo_rec guid_info_rec;
 ib_sa_comp_mask comp_mask;
 struct ib_port_attr attr;
 struct mlx4_alias_guid_work_context *callback_context;
 unsigned long resched_delay, flags, flags1;
 struct list_head *head =
  &dev->sriov.alias_guid.ports_guid[port - 1].cb_list;

 err = __mlx4_ib_query_port(ibdev, port, &attr, 1);
 if (err) {
  pr_debug("mlx4_ib_query_port failed (err: %d), port: %d\n",
    err, port);
  return err;
 }

 if (attr.state != IB_PORT_ACTIVE) {
  pr_debug("port %d not active...rescheduling\n", port);
  resched_delay = 5 * HZ;
  err = -EAGAIN;
  goto new_schedule;
 }

 callback_context = kmalloc(sizeof *callback_context, GFP_KERNEL);
 if (!callback_context) {
  err = -ENOMEM;
  resched_delay = HZ * 5;
  goto new_schedule;
 }
 callback_context->port = port;
 callback_context->dev = dev;
 callback_context->block_num = index;

 memset(&guid_info_rec, 0, sizeof (struct ib_sa_guidinfo_rec));

 guid_info_rec.lid = cpu_to_be16(attr.lid);
 guid_info_rec.block_num = index;

 memcpy(guid_info_rec.guid_info_list, rec_det->all_recs,
        GUID_REC_SIZE * NUM_ALIAS_GUID_IN_REC);
 comp_mask = IB_SA_GUIDINFO_REC_LID | IB_SA_GUIDINFO_REC_BLOCK_NUM |
  rec_det->guid_indexes;

 init_completion(&callback_context->done);
 spin_lock_irqsave(&dev->sriov.alias_guid.ag_work_lock, flags1);
 list_add_tail(&callback_context->list, head);
 spin_unlock_irqrestore(&dev->sriov.alias_guid.ag_work_lock, flags1);

 callback_context->query_id =
  ib_sa_guid_info_rec_query(dev->sriov.alias_guid.sa_client,
       ibdev, port, &guid_info_rec,
       comp_mask, rec_det->method, 1000,
       GFP_KERNEL, aliasguid_query_handler,
       callback_context,
       &callback_context->sa_query);
 if (callback_context->query_id < 0) {
  pr_debug("ib_sa_guid_info_rec_query failed, query_id: "
    "%d. will reschedule to the next 1 sec.\n",
    callback_context->query_id);
  spin_lock_irqsave(&dev->sriov.alias_guid.ag_work_lock, flags1);
  list_del(&callback_context->list);
  kfree(callback_context);
  spin_unlock_irqrestore(&dev->sriov.alias_guid.ag_work_lock, flags1);
  resched_delay = 1 * HZ;
  err = -EAGAIN;
  goto new_schedule;
 }
 err = 0;
 goto out;

new_schedule:
 spin_lock_irqsave(&dev->sriov.going_down_lock, flags);
 spin_lock_irqsave(&dev->sriov.alias_guid.ag_work_lock, flags1);
 invalidate_guid_record(dev, port, index);
 if (!dev->sriov.is_going_down) {
  queue_delayed_work(dev->sriov.alias_guid.ports_guid[port - 1].wq,
       &dev->sriov.alias_guid.ports_guid[port - 1].alias_guid_work,
       resched_delay);
 }
 spin_unlock_irqrestore(&dev->sriov.alias_guid.ag_work_lock, flags1);
 spin_unlock_irqrestore(&dev->sriov.going_down_lock, flags);

out:
 return err;
}
