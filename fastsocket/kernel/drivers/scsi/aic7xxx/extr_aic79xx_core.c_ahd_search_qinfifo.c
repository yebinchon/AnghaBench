
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct scb {int flags; } ;
struct TYPE_4__ {int numscbs; } ;
struct ahd_softc {int qinfifonext; int* qinfifo; TYPE_2__ scb_data; TYPE_1__* next_queued_hscb; } ;
typedef int role_t ;
typedef int ahd_search_action ;
typedef int ahd_mode_state ;
struct TYPE_3__ {int hscb_busaddr; } ;


 int AHD_MODE_CCHAN ;
 int AHD_MODE_SCSI ;
 int AHD_NUM_TARGETS ;
 int AHD_QIN_WRAP (int) ;
 int CAM_LUN_WILDCARD ;
 int CCARREN ;
 int CCSCBCTL ;
 int CCSCBDIR ;
 int CCSCBEN ;
 int CMDS_PENDING ;
 int MK_MESSAGE_SCB ;
 int NEXT_QUEUED_SCB_ADDR ;
 int PENDING_MK_MESSAGE ;
 int ROLE_UNKNOWN ;
 scalar_t__ SCBID_IS_NULL (int) ;
 int SCB_ACTIVE ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SCB_NEXT2 ;




 int SEQ_FLAGS2 ;
 int WAITING_SCB_TAILS ;
 int WAITING_TID_HEAD ;
 int ahd_done_with_status (struct ahd_softc*,struct scb*,int ) ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_get_snscb_qoff (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inw (struct ahd_softc*,int) ;
 int ahd_inw_scbram (struct ahd_softc*,int ) ;
 int ahd_le32toh (int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 scalar_t__ ahd_match_scb (struct ahd_softc*,struct scb*,int,char,int,int,int ) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_outl (struct ahd_softc*,int ,int ) ;
 int ahd_outw (struct ahd_softc*,int,int) ;
 int ahd_qinfifo_requeue (struct ahd_softc*,struct scb*,struct scb*) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 scalar_t__ ahd_search_scb_list (struct ahd_softc*,int,char,int,int,int ,int ,int,int*,int*,int) ;
 int ahd_set_hnscb_qoff (struct ahd_softc*,int) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;
 int ahd_stitch_tid_list (struct ahd_softc*,int,int,int) ;
 int panic (char*) ;
 int printf (char*,...) ;

int
ahd_search_qinfifo(struct ahd_softc *ahd, int target, char channel,
     int lun, u_int tag, role_t role, uint32_t status,
     ahd_search_action action)
{
 struct scb *scb;
 struct scb *mk_msg_scb;
 struct scb *prev_scb;
 ahd_mode_state saved_modes;
 u_int qinstart;
 u_int qinpos;
 u_int qintail;
 u_int tid_next;
 u_int tid_prev;
 u_int scbid;
 u_int seq_flags2;
 u_int savedscbptr;
 uint32_t busaddr;
 int found;
 int targets;


 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);





 if ((ahd_inb(ahd, CCSCBCTL) & (CCARREN|CCSCBEN|CCSCBDIR))
  == (CCARREN|CCSCBEN|CCSCBDIR)) {
  ahd_outb(ahd, CCSCBCTL,
    ahd_inb(ahd, CCSCBCTL) & ~(CCARREN|CCSCBEN));
  while ((ahd_inb(ahd, CCSCBCTL) & (CCARREN|CCSCBEN)) != 0)
   ;
 }

 qintail = AHD_QIN_WRAP(ahd->qinfifonext);
 qinstart = ahd_get_snscb_qoff(ahd);
 qinpos = AHD_QIN_WRAP(qinstart);
 found = 0;
 prev_scb = ((void*)0);

 if (action == 129) {
  printf("qinstart = %d qinfifonext = %d\nQINFIFO:",
         qinstart, ahd->qinfifonext);
 }





 ahd->qinfifonext = qinstart;
 busaddr = ahd_le32toh(ahd->next_queued_hscb->hscb_busaddr);
 ahd_outl(ahd, NEXT_QUEUED_SCB_ADDR, busaddr);

 while (qinpos != qintail) {
  scb = ahd_lookup_scb(ahd, ahd->qinfifo[qinpos]);
  if (scb == ((void*)0)) {
   printf("qinpos = %d, SCB index = %d\n",
    qinpos, ahd->qinfifo[qinpos]);
   panic("Loop 1\n");
  }

  if (ahd_match_scb(ahd, scb, target, channel, lun, tag, role)) {



   found++;
   switch (action) {
   case 131:
    if ((scb->flags & SCB_ACTIVE) == 0)
     printf("Inactive SCB in qinfifo\n");
    ahd_done_with_status(ahd, scb, status);

   case 128:
    break;
   case 129:
    printf(" 0x%x", ahd->qinfifo[qinpos]);

   case 130:
    ahd_qinfifo_requeue(ahd, prev_scb, scb);
    prev_scb = scb;
    break;
   }
  } else {
   ahd_qinfifo_requeue(ahd, prev_scb, scb);
   prev_scb = scb;
  }
  qinpos = AHD_QIN_WRAP(qinpos+1);
 }

 ahd_set_hnscb_qoff(ahd, ahd->qinfifonext);

 if (action == 129)
  printf("\nWAITING_TID_QUEUES:\n");







 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 seq_flags2 = ahd_inb(ahd, SEQ_FLAGS2);
 if ((seq_flags2 & PENDING_MK_MESSAGE) != 0) {
  scbid = ahd_inw(ahd, MK_MESSAGE_SCB);
  mk_msg_scb = ahd_lookup_scb(ahd, scbid);
 } else
  mk_msg_scb = ((void*)0);
 savedscbptr = ahd_get_scbptr(ahd);
 tid_next = ahd_inw(ahd, WAITING_TID_HEAD);
 tid_prev = SCB_LIST_NULL;
 targets = 0;
 for (scbid = tid_next; !SCBID_IS_NULL(scbid); scbid = tid_next) {
  u_int tid_head;
  u_int tid_tail;

  targets++;
  if (targets > AHD_NUM_TARGETS)
   panic("TID LIST LOOP");

  if (scbid >= ahd->scb_data.numscbs) {
   printf("%s: Waiting TID List inconsistency. "
          "SCB index == 0x%x, yet numscbs == 0x%x.",
          ahd_name(ahd), scbid, ahd->scb_data.numscbs);
   ahd_dump_card_state(ahd);
   panic("for safety");
  }
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   printf("%s: SCB = 0x%x Not Active!\n",
          ahd_name(ahd), scbid);
   panic("Waiting TID List traversal\n");
  }
  ahd_set_scbptr(ahd, scbid);
  tid_next = ahd_inw_scbram(ahd, SCB_NEXT2);
  if (ahd_match_scb(ahd, scb, target, channel, CAM_LUN_WILDCARD,
      SCB_LIST_NULL, ROLE_UNKNOWN) == 0) {
   tid_prev = scbid;
   continue;
  }




  if (action == 129)
   printf("       %d ( ", SCB_GET_TARGET(ahd, scb));
  tid_head = scbid;
  found += ahd_search_scb_list(ahd, target, channel,
          lun, tag, role, status,
          action, &tid_head, &tid_tail,
          SCB_GET_TARGET(ahd, scb));




  if (mk_msg_scb != ((void*)0)
   && ahd_match_scb(ahd, mk_msg_scb, target, channel,
      lun, tag, role)) {




   found++;
   switch (action) {
   case 131:
    if ((mk_msg_scb->flags & SCB_ACTIVE) == 0)
     printf("Inactive SCB pending MK_MSG\n");
    ahd_done_with_status(ahd, mk_msg_scb, status);

   case 128:
   {
    u_int tail_offset;

    printf("Removing MK_MSG scb\n");





    tail_offset = WAITING_SCB_TAILS
        + (2 * SCB_GET_TARGET(ahd, mk_msg_scb));
    ahd_outw(ahd, tail_offset, tid_tail);

    seq_flags2 &= ~PENDING_MK_MESSAGE;
    ahd_outb(ahd, SEQ_FLAGS2, seq_flags2);
    ahd_outw(ahd, CMDS_PENDING,
      ahd_inw(ahd, CMDS_PENDING)-1);
    mk_msg_scb = ((void*)0);
    break;
   }
   case 129:
    printf(" 0x%x", SCB_GET_TAG(scb));

   case 130:
    break;
   }
  }

  if (mk_msg_scb != ((void*)0)
   && SCBID_IS_NULL(tid_head)
   && ahd_match_scb(ahd, scb, target, channel, CAM_LUN_WILDCARD,
      SCB_LIST_NULL, ROLE_UNKNOWN)) {






   printf("Queueing mk_msg_scb\n");
   tid_head = ahd_inw(ahd, MK_MESSAGE_SCB);
   seq_flags2 &= ~PENDING_MK_MESSAGE;
   ahd_outb(ahd, SEQ_FLAGS2, seq_flags2);
   mk_msg_scb = ((void*)0);
  }
  if (tid_head != scbid)
   ahd_stitch_tid_list(ahd, tid_prev, tid_head, tid_next);
  if (!SCBID_IS_NULL(tid_head))
   tid_prev = tid_head;
  if (action == 129)
   printf(")\n");
 }


 ahd_set_scbptr(ahd, savedscbptr);
 ahd_restore_modes(ahd, saved_modes);
 return (found);
}
