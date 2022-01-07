
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scb {TYPE_1__* hscb; } ;
struct ahc_softc {scalar_t__* qinfifo; int features; int qinfifonext; } ;
struct TYPE_2__ {scalar_t__ tag; scalar_t__ next; int lun; } ;


 int AHC_AUTOPAUSE ;
 int AHC_QUEUE_REGS ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int HNSCB_QOFF ;
 int KERNEL_QINPOS ;
 int LID ;
 scalar_t__ SCB_LIST_NULL ;
 int SCB_XFERLEN_ODD ;
 int ahc_get_transfer_length (struct scb*) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;
 int ahc_pause (struct ahc_softc*) ;
 int ahc_swap_with_next_hscb (struct ahc_softc*,struct scb*) ;
 int ahc_sync_scb (struct ahc_softc*,struct scb*,int) ;
 int ahc_unpause (struct ahc_softc*) ;
 int panic (char*,scalar_t__,scalar_t__) ;

void
ahc_queue_scb(struct ahc_softc *ahc, struct scb *scb)
{
 ahc_swap_with_next_hscb(ahc, scb);

 if (scb->hscb->tag == SCB_LIST_NULL
  || scb->hscb->next == SCB_LIST_NULL)
  panic("Attempt to queue invalid SCB tag %x:%x\n",
        scb->hscb->tag, scb->hscb->next);




 scb->hscb->lun &= LID;
 if (ahc_get_transfer_length(scb) & 0x1)
  scb->hscb->lun |= SCB_XFERLEN_ODD;




 ahc->qinfifo[ahc->qinfifonext++] = scb->hscb->tag;





 ahc_sync_scb(ahc, scb, BUS_DMASYNC_PREREAD|BUS_DMASYNC_PREWRITE);


 if ((ahc->features & AHC_QUEUE_REGS) != 0) {
  ahc_outb(ahc, HNSCB_QOFF, ahc->qinfifonext);
 } else {
  if ((ahc->features & AHC_AUTOPAUSE) == 0)
   ahc_pause(ahc);
  ahc_outb(ahc, KERNEL_QINPOS, ahc->qinfifonext);
  if ((ahc->features & AHC_AUTOPAUSE) == 0)
   ahc_unpause(ahc);
 }
}
