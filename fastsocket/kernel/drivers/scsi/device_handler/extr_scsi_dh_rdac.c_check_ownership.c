
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct c9_inquiry {int avte_cvp; int path_prio; } ;
struct TYPE_2__ {struct c9_inquiry c9; } ;
struct rdac_dh_data {scalar_t__ mode; int preferred; int state; int lun_state; TYPE_1__ inq; } ;


 int RDAC_LUN_OWNED ;
 int RDAC_LUN_UNOWNED ;
 scalar_t__ RDAC_MODE ;
 scalar_t__ RDAC_MODE_AVT ;
 scalar_t__ RDAC_MODE_IOSHIP ;
 int RDAC_NON_PREFERRED ;
 int RDAC_PREFERRED ;
 int RDAC_STATE_ACTIVE ;
 int RDAC_STATE_PASSIVE ;
 int SCSI_DH_OK ;
 int submit_inquiry (struct scsi_device*,int,int,struct rdac_dh_data*) ;

__attribute__((used)) static int check_ownership(struct scsi_device *sdev, struct rdac_dh_data *h)
{
 int err;
 struct c9_inquiry *inqp;

 h->state = RDAC_STATE_ACTIVE;
 err = submit_inquiry(sdev, 0xC9, sizeof(struct c9_inquiry), h);
 if (err == SCSI_DH_OK) {
  inqp = &h->inq.c9;

  if ((inqp->avte_cvp >> 5) & 0x1)
   h->mode = RDAC_MODE_IOSHIP;
  else if (inqp->avte_cvp >> 7)
   h->mode = RDAC_MODE_AVT;
  else
   h->mode = RDAC_MODE;


  if (inqp->avte_cvp & 0x1)
   h->lun_state = RDAC_LUN_OWNED;
  else {
   h->lun_state = RDAC_LUN_UNOWNED;
   if (h->mode == RDAC_MODE)
    h->state = RDAC_STATE_PASSIVE;
  }


  if (inqp->path_prio & 0x1)
   h->preferred = RDAC_PREFERRED;
  else
   h->preferred = RDAC_NON_PREFERRED;
 }

 return err;
}
