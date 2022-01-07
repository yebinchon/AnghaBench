
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct srp_target {int lock; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct scsi_cmnd {scalar_t__ result; TYPE_1__ SCp; } ;
struct iu_entry {int ilist; struct srp_target* target; } ;
struct TYPE_8__ {int * cdb; } ;
struct TYPE_6__ {TYPE_4__ cmd; } ;
struct TYPE_7__ {TYPE_2__ srp; } ;


 int HARDWARE_ERROR ;
 int NO_SENSE ;
 scalar_t__ SAM_STAT_GOOD ;
 int dprintk (char*,struct iu_entry*,struct srp_target*,int ,scalar_t__) ;
 int eprintk (char*,struct iu_entry*,scalar_t__,int ) ;
 int ibmvstgt_rdma ;
 int list_del (int *) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int send_rsp (struct iu_entry*,struct scsi_cmnd*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srp_iu_put (struct iu_entry*) ;
 int srp_transfer_data (struct scsi_cmnd*,TYPE_4__*,int ,int,int) ;
 TYPE_3__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static int ibmvstgt_cmd_done(struct scsi_cmnd *sc,
        void (*done)(struct scsi_cmnd *))
{
 unsigned long flags;
 struct iu_entry *iue = (struct iu_entry *) sc->SCp.ptr;
 struct srp_target *target = iue->target;
 int err = 0;

 dprintk("%p %p %x %u\n", iue, target, vio_iu(iue)->srp.cmd.cdb[0],
  scsi_sg_count(sc));

 if (scsi_sg_count(sc))
  err = srp_transfer_data(sc, &vio_iu(iue)->srp.cmd, ibmvstgt_rdma, 1, 1);

 spin_lock_irqsave(&target->lock, flags);
 list_del(&iue->ilist);
 spin_unlock_irqrestore(&target->lock, flags);

 if (err|| sc->result != SAM_STAT_GOOD) {
  eprintk("operation failed %p %d %x\n",
   iue, sc->result, vio_iu(iue)->srp.cmd.cdb[0]);
  send_rsp(iue, sc, HARDWARE_ERROR, 0x00);
 } else
  send_rsp(iue, sc, NO_SENSE, 0x00);

 done(sc);
 srp_iu_put(iue);
 return 0;
}
