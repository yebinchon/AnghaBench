
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahd_softc {int send_msg_perror; int* msgout_buf; void* msg_type; scalar_t__ msgout_index; scalar_t__ msgout_len; int msg_flags; } ;
struct ahd_devinfo {int target_mask; } ;
struct TYPE_2__ {int control; int scsiid; } ;


 int AHD_SHOW_MESSAGES ;
 int DISCENB ;
 scalar_t__ HOST_MSG ;
 int MK_MESSAGE ;
 int MSG_ABORT ;
 int MSG_ABORT_TAG ;
 int MSG_BUS_DEV_RESET ;
 int MSG_FLAG_PACKETIZED ;
 scalar_t__ MSG_IDENTIFYFLAG ;
 int MSG_IDENTIFY_DISCFLAG ;
 int MSG_NOOP ;
 int MSG_OUT ;
 void* MSG_TYPE_INITIATOR_MSGOUT ;
 int SCB_ABORT ;
 int SCB_AUTO_NEGOTIATE ;
 int SCB_CONTROL ;
 int SCB_DEVICE_RESET ;
 scalar_t__ SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_NEGOTIATE ;
 int SCB_PACKETIZED ;
 int SCB_TAG_TYPE ;
 int SCSISEQ0 ;
 int TAG_ENB ;
 int ahd_build_transfer_msg (struct ahd_softc*,struct ahd_devinfo*) ;
 scalar_t__ ahd_currently_packetized (struct ahd_softc*) ;
 int ahd_debug ;
 scalar_t__ ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inb_scbram (struct ahd_softc*,int ) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int panic (char*,int,int,int,scalar_t__,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ahd_setup_initiator_msgout(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
      struct scb *scb)
{





 ahd->msgout_index = 0;
 ahd->msgout_len = 0;

 if (ahd_currently_packetized(ahd))
  ahd->msg_flags |= MSG_FLAG_PACKETIZED;

 if (ahd->send_msg_perror
  && ahd_inb(ahd, MSG_OUT) == HOST_MSG) {
  ahd->msgout_buf[ahd->msgout_index++] = ahd->send_msg_perror;
  ahd->msgout_len++;
  ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;




  return;
 } else if (scb == ((void*)0)) {
  printf("%s: WARNING. No pending message for "
         "I_T msgin.  Issuing NO-OP\n", ahd_name(ahd));
  ahd->msgout_buf[ahd->msgout_index++] = MSG_NOOP;
  ahd->msgout_len++;
  ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
  return;
 }

 if ((scb->flags & SCB_DEVICE_RESET) == 0
  && (scb->flags & SCB_PACKETIZED) == 0
  && ahd_inb(ahd, MSG_OUT) == MSG_IDENTIFYFLAG) {
  u_int identify_msg;

  identify_msg = MSG_IDENTIFYFLAG | SCB_GET_LUN(scb);
  if ((scb->hscb->control & DISCENB) != 0)
   identify_msg |= MSG_IDENTIFY_DISCFLAG;
  ahd->msgout_buf[ahd->msgout_index++] = identify_msg;
  ahd->msgout_len++;

  if ((scb->hscb->control & TAG_ENB) != 0) {
   ahd->msgout_buf[ahd->msgout_index++] =
       scb->hscb->control & (TAG_ENB|SCB_TAG_TYPE);
   ahd->msgout_buf[ahd->msgout_index++] = SCB_GET_TAG(scb);
   ahd->msgout_len += 2;
  }
 }

 if (scb->flags & SCB_DEVICE_RESET) {
  ahd->msgout_buf[ahd->msgout_index++] = MSG_BUS_DEV_RESET;
  ahd->msgout_len++;
  ahd_print_path(ahd, scb);
  printf("Bus Device Reset Message Sent\n");







  ahd_outb(ahd, SCSISEQ0, 0);
 } else if ((scb->flags & SCB_ABORT) != 0) {

  if ((scb->hscb->control & TAG_ENB) != 0) {
   ahd->msgout_buf[ahd->msgout_index++] = MSG_ABORT_TAG;
  } else {
   ahd->msgout_buf[ahd->msgout_index++] = MSG_ABORT;
  }
  ahd->msgout_len++;
  ahd_print_path(ahd, scb);
  printf("Abort%s Message Sent\n",
         (scb->hscb->control & TAG_ENB) != 0 ? " Tag" : "");







  ahd_outb(ahd, SCSISEQ0, 0);
 } else if ((scb->flags & (SCB_AUTO_NEGOTIATE|SCB_NEGOTIATE)) != 0) {
  ahd_build_transfer_msg(ahd, devinfo);







  ahd_outb(ahd, SCSISEQ0, 0);
 } else {
  printf("ahd_intr: AWAITING_MSG for an SCB that "
         "does not have a waiting message\n");
  printf("SCSIID = %x, target_mask = %x\n", scb->hscb->scsiid,
         devinfo->target_mask);
  panic("SCB = %d, SCB Control = %x:%x, MSG_OUT = %x "
        "SCB flags = %x", SCB_GET_TAG(scb), scb->hscb->control,
        ahd_inb_scbram(ahd, SCB_CONTROL), ahd_inb(ahd, MSG_OUT),
        scb->flags);
 }





 ahd_outb(ahd, SCB_CONTROL,
   ahd_inb_scbram(ahd, SCB_CONTROL) & ~MK_MESSAGE);
 scb->hscb->control &= ~MK_MESSAGE;
 ahd->msgout_index = 0;
 ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
}
