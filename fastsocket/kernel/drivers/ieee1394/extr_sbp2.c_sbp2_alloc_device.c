
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct unit_directory {int device; TYPE_3__* ne; } ;
struct sbp2_status_block {int dummy; } ;
struct sbp2_lu {size_t speed_code; scalar_t__ status_fifo_addr; struct Scsi_Host* shost; int lu_list; struct sbp2_fwhost_info* hi; int protocol_work; int state; int cmd_orb_lock; int cmd_orb_completed; int cmd_orb_inuse; int max_payload_size; struct unit_directory* ud; TYPE_3__* ne; } ;
struct sbp2_fwhost_info {int logical_units; TYPE_4__* host; } ;
struct Scsi_Host {unsigned long* hostdata; int max_cmd_len; } ;
typedef int quadlet_t ;
struct TYPE_8__ {int parent; } ;
struct TYPE_11__ {int low_addr_space; TYPE_2__* driver; TYPE_1__ device; } ;
struct TYPE_10__ {TYPE_4__* host; } ;
struct TYPE_9__ {int owner; } ;


 int BUG_ON (int ) ;
 int CSR1212_ALL_SPACE_END ;
 scalar_t__ CSR1212_INVALID_ADDR_SPACE ;
 int GFP_KERNEL ;
 size_t IEEE1394_SPEED_100 ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 int SBP2LU_STATE_RUNNING ;
 int SBP2_ERR (char*) ;
 int SBP2_MAX_CDB_SIZE ;
 scalar_t__ SBP2_MAX_SEG_SIZE ;
 int atomic_set (int *,int ) ;
 int dev_set_drvdata (int *,struct sbp2_lu*) ;
 scalar_t__ dma_get_max_seg_size (int ) ;
 int dma_set_max_seg_size (int ,scalar_t__) ;
 scalar_t__ hpsb_allocate_and_register_addrspace (int *,TYPE_4__*,int *,int,int,int ,int ) ;
 struct sbp2_fwhost_info* hpsb_create_hostinfo (int *,TYPE_4__*,int) ;
 struct sbp2_fwhost_info* hpsb_get_hostinfo (int *,TYPE_4__*) ;
 int hpsb_register_addrspace (int *,TYPE_4__*,int *,int,int) ;
 struct sbp2_lu* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sbp2_hi_logical_units_lock ;
 int sbp2_highlevel ;
 int sbp2_ops ;
 int sbp2_physdma_ops ;
 int sbp2_remove_device (struct sbp2_lu*) ;
 int sbp2_shost_template ;
 int * sbp2_speedto_max_payload ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int spin_lock_init (int *) ;
 int try_module_get (int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct sbp2_lu *sbp2_alloc_device(struct unit_directory *ud)
{
 struct sbp2_fwhost_info *hi;
 struct Scsi_Host *shost = ((void*)0);
 struct sbp2_lu *lu = ((void*)0);
 unsigned long flags;

 lu = kzalloc(sizeof(*lu), GFP_KERNEL);
 if (!lu) {
  SBP2_ERR("failed to create lu");
  goto failed_alloc;
 }

 lu->ne = ud->ne;
 lu->ud = ud;
 lu->speed_code = IEEE1394_SPEED_100;
 lu->max_payload_size = sbp2_speedto_max_payload[IEEE1394_SPEED_100];
 lu->status_fifo_addr = CSR1212_INVALID_ADDR_SPACE;
 INIT_LIST_HEAD(&lu->cmd_orb_inuse);
 INIT_LIST_HEAD(&lu->cmd_orb_completed);
 INIT_LIST_HEAD(&lu->lu_list);
 spin_lock_init(&lu->cmd_orb_lock);
 atomic_set(&lu->state, SBP2LU_STATE_RUNNING);
 INIT_WORK(&lu->protocol_work, ((void*)0));

 dev_set_drvdata(&ud->device, lu);

 hi = hpsb_get_hostinfo(&sbp2_highlevel, ud->ne->host);
 if (!hi) {
  hi = hpsb_create_hostinfo(&sbp2_highlevel, ud->ne->host,
       sizeof(*hi));
  if (!hi) {
   SBP2_ERR("failed to allocate hostinfo");
   goto failed_alloc;
  }
  hi->host = ud->ne->host;
  INIT_LIST_HEAD(&hi->logical_units);
 }

 if (dma_get_max_seg_size(hi->host->device.parent) > SBP2_MAX_SEG_SIZE)
  BUG_ON(dma_set_max_seg_size(hi->host->device.parent,
         SBP2_MAX_SEG_SIZE));


 if (!try_module_get(hi->host->driver->owner)) {
  SBP2_ERR("failed to get a reference on 1394 host driver");
  goto failed_alloc;
 }

 lu->hi = hi;

 write_lock_irqsave(&sbp2_hi_logical_units_lock, flags);
 list_add_tail(&lu->lu_list, &hi->logical_units);
 write_unlock_irqrestore(&sbp2_hi_logical_units_lock, flags);
 lu->status_fifo_addr = hpsb_allocate_and_register_addrspace(
   &sbp2_highlevel, ud->ne->host, &sbp2_ops,
   sizeof(struct sbp2_status_block), sizeof(quadlet_t),
   ud->ne->host->low_addr_space, CSR1212_ALL_SPACE_END);
 if (lu->status_fifo_addr == CSR1212_INVALID_ADDR_SPACE) {
  SBP2_ERR("failed to allocate status FIFO address range");
  goto failed_alloc;
 }

 shost = scsi_host_alloc(&sbp2_shost_template, sizeof(unsigned long));
 if (!shost) {
  SBP2_ERR("failed to register scsi host");
  goto failed_alloc;
 }

 shost->hostdata[0] = (unsigned long)lu;
 shost->max_cmd_len = SBP2_MAX_CDB_SIZE;

 if (!scsi_add_host(shost, &ud->device)) {
  lu->shost = shost;
  return lu;
 }

 SBP2_ERR("failed to add scsi host");
 scsi_host_put(shost);

failed_alloc:
 sbp2_remove_device(lu);
 return ((void*)0);
}
