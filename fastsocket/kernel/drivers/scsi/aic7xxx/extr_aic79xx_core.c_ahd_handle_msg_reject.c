
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct scb {TYPE_3__* hscb; int io_ctx; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int msg_flags; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct TYPE_5__ {int transport_version; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ period; int ppr_options; int transport_version; scalar_t__ offset; } ;
struct ahd_initiator_tinfo {TYPE_2__ curr; TYPE_1__ goal; } ;
struct ahd_devinfo {int channel; int target; int lun; int our_scsiid; } ;
struct TYPE_6__ {int control; int scsiid; } ;


 int AHDMSG_1B ;
 int AHDMSG_EXT ;
 int AHD_QUEUE_BASIC ;
 int AHD_QUEUE_NONE ;
 scalar_t__ AHD_SYNCRATE_DT ;
 scalar_t__ AHD_SYNCRATE_PACED ;
 int AHD_TRANS_ACTIVE ;
 int AHD_TRANS_GOAL ;
 int BUILD_TCL (int ,int) ;
 int CAM_REQUEUE_REQ ;
 int FALSE ;
 int LAST_MSG ;
 int MSG_EXT_PPR ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_IU_REQ ;
 int MSG_EXT_PPR_QAS_REQ ;
 int MSG_EXT_SDTR ;
 int MSG_EXT_WDTR ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int MSG_FLAG_EXPECT_PPR_BUSFREE ;
 int MSG_FLAG_IU_REQ_CHANGED ;
 int MSG_IDENTIFYFLAG ;
 int MSG_ORDERED_TASK ;
 int MSG_OUT ;
 int MSG_SIMPLE_TASK ;
 int ROLE_INITIATOR ;
 int SCB_CONTROL ;
 int SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SEARCH_COMPLETE ;
 int TRUE ;
 int ahd_assert_atn (struct ahd_softc*) ;
 int ahd_build_transfer_msg (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_busy_tcl (struct ahd_softc*,int ,int ) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int,int ,int,struct ahd_tmode_tstate**) ;
 int ahd_force_renegotiation (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inb_scbram (struct ahd_softc*,int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_search_qinfifo (struct ahd_softc*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ ahd_sent_msg (struct ahd_softc*,int ,int,int ) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int,int ) ;
 int ahd_set_tags (struct ahd_softc*,int ,struct ahd_devinfo*,int ) ;
 int ahd_set_transaction_tag (struct scb*,int ,int) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int,int ) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int,int,int,...) ;

__attribute__((used)) static int
ahd_handle_msg_reject(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{






 struct scb *scb;
 struct ahd_initiator_tinfo *tinfo;
 struct ahd_tmode_tstate *tstate;
 u_int scb_index;
 u_int last_msg;
 int response = 0;

 scb_index = ahd_get_scbptr(ahd);
 scb = ahd_lookup_scb(ahd, scb_index);
 tinfo = ahd_fetch_transinfo(ahd, devinfo->channel,
        devinfo->our_scsiid,
        devinfo->target, &tstate);

 last_msg = ahd_inb(ahd, LAST_MSG);

 if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_PPR, FALSE)) {
  if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_PPR, TRUE)
   && tinfo->goal.period <= AHD_SYNCRATE_PACED) {





   if (bootverbose) {
    printf("(%s:%c:%d:%d): PPR Rejected. "
           "Trying simple U160 PPR\n",
           ahd_name(ahd), devinfo->channel,
           devinfo->target, devinfo->lun);
   }
   tinfo->goal.period = AHD_SYNCRATE_DT;
   tinfo->goal.ppr_options &= MSG_EXT_PPR_IU_REQ
      | MSG_EXT_PPR_QAS_REQ
      | MSG_EXT_PPR_DT_REQ;
  } else {




   if (bootverbose) {
    printf("(%s:%c:%d:%d): PPR Rejected. "
           "Trying WDTR/SDTR\n",
           ahd_name(ahd), devinfo->channel,
           devinfo->target, devinfo->lun);
   }
   tinfo->goal.ppr_options = 0;
   tinfo->curr.transport_version = 2;
   tinfo->goal.transport_version = 2;
  }
  ahd->msgout_index = 0;
  ahd->msgout_len = 0;
  ahd_build_transfer_msg(ahd, devinfo);
  ahd->msgout_index = 0;
  response = 1;
 } else if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_WDTR, FALSE)) {


  printf("(%s:%c:%d:%d): refuses WIDE negotiation.  Using "
         "8bit transfers\n", ahd_name(ahd),
         devinfo->channel, devinfo->target, devinfo->lun);
  ahd_set_width(ahd, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
         AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
                   TRUE);







  if (tinfo->goal.offset != tinfo->curr.offset) {


   ahd->msgout_index = 0;
   ahd->msgout_len = 0;
   ahd_build_transfer_msg(ahd, devinfo);
   ahd->msgout_index = 0;
   response = 1;
  }
 } else if (ahd_sent_msg(ahd, AHDMSG_EXT, MSG_EXT_SDTR, FALSE)) {

  ahd_set_syncrate(ahd, devinfo, 0,
               0, 0,
     AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
               TRUE);
  printf("(%s:%c:%d:%d): refuses synchronous negotiation. "
         "Using asynchronous transfers\n",
         ahd_name(ahd), devinfo->channel,
         devinfo->target, devinfo->lun);
 } else if ((scb->hscb->control & MSG_SIMPLE_TASK) != 0) {
  int tag_type;
  int mask;

  tag_type = (scb->hscb->control & MSG_SIMPLE_TASK);

  if (tag_type == MSG_SIMPLE_TASK) {
   printf("(%s:%c:%d:%d): refuses tagged commands.  "
          "Performing non-tagged I/O\n", ahd_name(ahd),
          devinfo->channel, devinfo->target, devinfo->lun);
   ahd_set_tags(ahd, scb->io_ctx, devinfo, AHD_QUEUE_NONE);
   mask = ~0x23;
  } else {
   printf("(%s:%c:%d:%d): refuses %s tagged commands.  "
          "Performing simple queue tagged I/O only\n",
          ahd_name(ahd), devinfo->channel, devinfo->target,
          devinfo->lun, tag_type == MSG_ORDERED_TASK
          ? "ordered" : "head of queue");
   ahd_set_tags(ahd, scb->io_ctx, devinfo, AHD_QUEUE_BASIC);
   mask = ~0x03;
  }





  ahd_outb(ahd, SCB_CONTROL,
    ahd_inb_scbram(ahd, SCB_CONTROL) & mask);
   scb->hscb->control &= mask;
  ahd_set_transaction_tag(scb, FALSE,
             MSG_SIMPLE_TASK);
  ahd_outb(ahd, MSG_OUT, MSG_IDENTIFYFLAG);
  ahd_assert_atn(ahd);
  ahd_busy_tcl(ahd, BUILD_TCL(scb->hscb->scsiid, devinfo->lun),
        SCB_GET_TAG(scb));






  ahd_search_qinfifo(ahd, SCB_GET_TARGET(ahd, scb),
       SCB_GET_CHANNEL(ahd, scb),
       SCB_GET_LUN(scb), SCB_LIST_NULL,
       ROLE_INITIATOR, CAM_REQUEUE_REQ,
       SEARCH_COMPLETE);
 } else if (ahd_sent_msg(ahd, AHDMSG_1B, MSG_IDENTIFYFLAG, TRUE)) {




  ahd->msg_flags |= MSG_FLAG_EXPECT_PPR_BUSFREE
          | MSG_FLAG_IU_REQ_CHANGED;

  ahd_force_renegotiation(ahd, devinfo);
  ahd->msgout_index = 0;
  ahd->msgout_len = 0;
  ahd_build_transfer_msg(ahd, devinfo);
  ahd->msgout_index = 0;
  response = 1;
 } else {



  printf("%s:%c:%d: Message reject for %x -- ignored\n",
         ahd_name(ahd), devinfo->channel, devinfo->target,
         last_msg);
 }
 return (response);
}
