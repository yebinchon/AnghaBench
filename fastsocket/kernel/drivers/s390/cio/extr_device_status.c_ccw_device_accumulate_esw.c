
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sublog {int ioerr; int serr; int devsc; int seqc; int termc; int sacc; int fvf; int arep; int esf; } ;
struct TYPE_14__ {int scnt; scalar_t__ cons; scalar_t__ pvrf; int auth; scalar_t__ scavf; int fsaf; scalar_t__ fsavf; int cpt; } ;
struct TYPE_15__ {TYPE_6__ erw; int saddr; int faddr; struct sublog sublog; } ;
struct TYPE_9__ {int lpum; } ;
struct TYPE_16__ {TYPE_7__ esw0; TYPE_1__ esw1; } ;
struct TYPE_10__ {int cstat; scalar_t__ eswf; } ;
struct TYPE_11__ {TYPE_2__ cmd; } ;
struct irb {TYPE_8__ esw; TYPE_3__ scsw; } ;
struct ccw_device {TYPE_5__* private; } ;
struct TYPE_12__ {int doverify; } ;
struct TYPE_13__ {TYPE_4__ flags; struct irb irb; } ;


 int SCHN_STAT_CHN_CTRL_CHK ;
 int SCHN_STAT_CHN_DATA_CHK ;
 int SCHN_STAT_INTF_CTRL_CHK ;
 int ccw_device_accumulate_esw_valid (struct irb*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
ccw_device_accumulate_esw(struct ccw_device *cdev, struct irb *irb)
{
 struct irb *cdev_irb;
 struct sublog *cdev_sublog, *sublog;

 if (!ccw_device_accumulate_esw_valid(irb))
  return;

 cdev_irb = &cdev->private->irb;


 cdev_irb->esw.esw1.lpum = irb->esw.esw1.lpum;


 if (irb->scsw.cmd.eswf) {
  cdev_sublog = &cdev_irb->esw.esw0.sublog;
  sublog = &irb->esw.esw0.sublog;

  cdev_sublog->esf = sublog->esf;




  if (irb->scsw.cmd.cstat & (SCHN_STAT_CHN_DATA_CHK |
           SCHN_STAT_CHN_CTRL_CHK |
           SCHN_STAT_INTF_CTRL_CHK)) {

   cdev_sublog->arep = sublog->arep;

   cdev_sublog->fvf = sublog->fvf;

   cdev_sublog->sacc = sublog->sacc;

   cdev_sublog->termc = sublog->termc;

   cdev_sublog->seqc = sublog->seqc;
  }

  cdev_sublog->devsc = sublog->devsc;

  cdev_sublog->serr = sublog->serr;

  cdev_sublog->ioerr = sublog->ioerr;

  if (irb->scsw.cmd.cstat & SCHN_STAT_INTF_CTRL_CHK)
   cdev_irb->esw.esw0.erw.cpt = irb->esw.esw0.erw.cpt;

  cdev_irb->esw.esw0.erw.fsavf = irb->esw.esw0.erw.fsavf;
  if (cdev_irb->esw.esw0.erw.fsavf) {

   memcpy(cdev_irb->esw.esw0.faddr, irb->esw.esw0.faddr,
          sizeof (irb->esw.esw0.faddr));

   cdev_irb->esw.esw0.erw.fsaf = irb->esw.esw0.erw.fsaf;
  }

  cdev_irb->esw.esw0.erw.scavf = irb->esw.esw0.erw.scavf;
  if (irb->esw.esw0.erw.scavf)

   cdev_irb->esw.esw0.saddr = irb->esw.esw0.saddr;

 }



 cdev_irb->esw.esw0.erw.auth = irb->esw.esw0.erw.auth;

 cdev_irb->esw.esw0.erw.pvrf = irb->esw.esw0.erw.pvrf;
 if (irb->esw.esw0.erw.pvrf)
  cdev->private->flags.doverify = 1;

 cdev_irb->esw.esw0.erw.cons = irb->esw.esw0.erw.cons;
 if (irb->esw.esw0.erw.cons)
  cdev_irb->esw.esw0.erw.scnt = irb->esw.esw0.erw.scnt;
}
