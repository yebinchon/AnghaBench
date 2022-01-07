
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int check_nego; } ;
struct TYPE_5__ {scalar_t__ uval; int wval; scalar_t__ sval; } ;
struct sym_tcb {int * starget; TYPE_2__ tgoal; TYPE_1__ head; } ;
struct sym_lcb {scalar_t__ busy_itl; scalar_t__ busy_itlq; } ;
struct TYPE_8__ {TYPE_3__* host; } ;
struct sym_hcb {TYPE_4__ s; int rv_scntl3; struct sym_tcb* target; } ;
struct scsi_device {size_t id; int lun; int host; } ;
struct TYPE_7__ {int host_lock; } ;


 int KERN_WARNING ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int starget_printk (int ,int *,char*,int ) ;
 scalar_t__ sym_free_lcb (struct sym_hcb*,size_t,int ) ;
 struct sym_hcb* sym_get_hcb (int ) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int ) ;
 int sym_reset_scsi_bus (struct sym_hcb*,int) ;

__attribute__((used)) static void sym53c8xx_slave_destroy(struct scsi_device *sdev)
{
 struct sym_hcb *np = sym_get_hcb(sdev->host);
 struct sym_tcb *tp = &np->target[sdev->id];
 struct sym_lcb *lp = sym_lp(tp, sdev->lun);
 unsigned long flags;

 spin_lock_irqsave(np->s.host->host_lock, flags);

 if (lp->busy_itlq || lp->busy_itl) {




  starget_printk(KERN_WARNING, tp->starget,
          "Removing busy LCB (%d)\n", sdev->lun);
  sym_reset_scsi_bus(np, 1);
 }

 if (sym_free_lcb(np, sdev->id, sdev->lun) == 0) {



  tp->head.sval = 0;
  tp->head.wval = np->rv_scntl3;
  tp->head.uval = 0;
  tp->tgoal.check_nego = 1;
  tp->starget = ((void*)0);
 }

 spin_unlock_irqrestore(np->s.host->host_lock, flags);
}
