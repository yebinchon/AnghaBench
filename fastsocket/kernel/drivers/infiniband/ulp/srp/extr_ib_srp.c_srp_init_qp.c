
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pkey; } ;
struct srp_target_port {TYPE_3__* srp_host; TYPE_2__ path; } ;
struct ib_qp_attr {int qp_access_flags; int port_num; int qp_state; int pkey_index; } ;
struct ib_qp {int dummy; } ;
struct TYPE_6__ {int port; TYPE_1__* srp_dev; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_QPS_INIT ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 int be16_to_cpu (int ) ;
 int ib_find_pkey (int ,int ,int ,int *) ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 int kfree (struct ib_qp_attr*) ;
 struct ib_qp_attr* kmalloc (int,int ) ;

__attribute__((used)) static int srp_init_qp(struct srp_target_port *target,
         struct ib_qp *qp)
{
 struct ib_qp_attr *attr;
 int ret;

 attr = kmalloc(sizeof *attr, GFP_KERNEL);
 if (!attr)
  return -ENOMEM;

 ret = ib_find_pkey(target->srp_host->srp_dev->dev,
      target->srp_host->port,
      be16_to_cpu(target->path.pkey),
      &attr->pkey_index);
 if (ret)
  goto out;

 attr->qp_state = IB_QPS_INIT;
 attr->qp_access_flags = (IB_ACCESS_REMOTE_READ |
        IB_ACCESS_REMOTE_WRITE);
 attr->port_num = target->srp_host->port;

 ret = ib_modify_qp(qp, attr,
      IB_QP_STATE |
      IB_QP_PKEY_INDEX |
      IB_QP_ACCESS_FLAGS |
      IB_QP_PORT);

out:
 kfree(attr);
 return ret;
}
