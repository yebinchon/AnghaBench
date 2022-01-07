
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_ctrl_blk {int tastat; size_t target; int mode; int flags; int senselen; int buflen; int ident; int cdblen; int* cdb; int (* post ) (int*,int*) ;int hastat; scalar_t__ tagmsg; int senseptr; int bufptr; } ;
struct initio_host {scalar_t__ active; scalar_t__ addr; scalar_t__* act_tags; scalar_t__* max_tags; } ;


 int HOST_BAD_PHAS ;
 int INI_QUEUE_FULL ;
 int SCF_DIR ;
 int SCF_DONE ;
 int SCF_POST ;
 int SCF_SENSE ;
 int SCF_SG ;
 int SCM_RSENS ;
 int SCSICMD_RequestSense ;
 int TSS_INT_PENDING ;
 scalar_t__ TUL_SStatus0 ;
 int inb (scalar_t__) ;
 int initio_append_pend_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 struct scsi_ctrl_blk* initio_find_done_scb (struct initio_host*) ;
 int * initio_find_first_pend_scb (struct initio_host*) ;
 int initio_push_pend_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int stub1 (int*,int*) ;
 int tulip_scsi (struct initio_host*) ;

__attribute__((used)) static int tulip_main(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb;

 for (;;) {
  tulip_scsi(host);


  while ((scb = initio_find_done_scb(host)) != ((void*)0)) {
   if (scb->tastat == INI_QUEUE_FULL) {
    host->max_tags[scb->target] =
        host->act_tags[scb->target] - 1;
    scb->tastat = 0;
    initio_append_pend_scb(host, scb);
    continue;
   }
   if (!(scb->mode & SCM_RSENS)) {
    if (scb->tastat == 2) {



     if (scb->flags & SCF_SENSE) {
      u8 len;
      len = scb->senselen;
      if (len == 0)
       len = 1;
      scb->buflen = scb->senselen;
      scb->bufptr = scb->senseptr;
      scb->flags &= ~(SCF_SG | SCF_DIR);


      scb->mode = SCM_RSENS;
      scb->ident &= 0xBF;
      scb->tagmsg = 0;
      scb->tastat = 0;
      scb->cdblen = 6;
      scb->cdb[0] = SCSICMD_RequestSense;
      scb->cdb[1] = 0;
      scb->cdb[2] = 0;
      scb->cdb[3] = 0;
      scb->cdb[4] = len;
      scb->cdb[5] = 0;
      initio_push_pend_scb(host, scb);
      break;
     }
    }
   } else {

    if (scb->tastat == 2) {

     scb->hastat = HOST_BAD_PHAS;
    }
    scb->tastat = 2;
   }
   scb->flags |= SCF_DONE;
   if (scb->flags & SCF_POST) {

    (*scb->post) ((u8 *) host, (u8 *) scb);
   }
  }

  if (inb(host->addr + TUL_SStatus0) & TSS_INT_PENDING)
   continue;
  if (host->active)
   return 1;

  if (initio_find_first_pend_scb(host) == ((void*)0))
   return 1;
 }

}
