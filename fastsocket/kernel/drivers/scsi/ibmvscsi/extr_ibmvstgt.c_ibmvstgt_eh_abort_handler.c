
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
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct iu_entry {int ilist; struct srp_target* target; } ;
struct TYPE_7__ {int * cdb; } ;
struct TYPE_6__ {TYPE_3__ cmd; } ;
struct TYPE_8__ {TYPE_2__ srp; } ;


 int dprintk (char*,struct iu_entry*,struct srp_target*,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srp_iu_put (struct iu_entry*) ;
 TYPE_4__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static int ibmvstgt_eh_abort_handler(struct scsi_cmnd *sc)
{
 unsigned long flags;
 struct iu_entry *iue = (struct iu_entry *) sc->SCp.ptr;
 struct srp_target *target = iue->target;

 dprintk("%p %p %x\n", iue, target, vio_iu(iue)->srp.cmd.cdb[0]);

 spin_lock_irqsave(&target->lock, flags);
 list_del(&iue->ilist);
 spin_unlock_irqrestore(&target->lock, flags);

 srp_iu_put(iue);

 return 0;
}
