
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int u_int ;
struct scb {int dummy; } ;
struct ahc_softc {size_t qinfifonext; int features; int * qinfifo; } ;


 int AHC_QUEUE_REGS ;
 int HNSCB_QOFF ;
 int KERNEL_QINPOS ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,size_t) ;
 scalar_t__ ahc_qinfifo_count (struct ahc_softc*) ;
 int ahc_qinfifo_requeue (struct ahc_softc*,struct scb*,struct scb*) ;

void
ahc_qinfifo_requeue_tail(struct ahc_softc *ahc, struct scb *scb)
{
 struct scb *prev_scb;

 prev_scb = ((void*)0);
 if (ahc_qinfifo_count(ahc) != 0) {
  u_int prev_tag;
  uint8_t prev_pos;

  prev_pos = ahc->qinfifonext - 1;
  prev_tag = ahc->qinfifo[prev_pos];
  prev_scb = ahc_lookup_scb(ahc, prev_tag);
 }
 ahc_qinfifo_requeue(ahc, prev_scb, scb);
 if ((ahc->features & AHC_QUEUE_REGS) != 0) {
  ahc_outb(ahc, HNSCB_QOFF, ahc->qinfifonext);
 } else {
  ahc_outb(ahc, KERNEL_QINPOS, ahc->qinfifonext);
 }
}
