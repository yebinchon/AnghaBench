
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct scb {scalar_t__ crc_retry_count; } ;
struct ahd_softc {int bugs; scalar_t__ src_mode; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int,int) ;
 int AHD_CLRLQO_AUTOCLR_BUG ;
 scalar_t__ AHD_MAX_LQ_CRC_ERRORS ;
 int AHD_MODE_CFG_MSK ;
 scalar_t__ AHD_MODE_SCSI ;
 int AHD_MODE_UNKNOWN_MSK ;
 int AHD_SHOW_MASKED_ERRORS ;
 int CAM_UNCOR_PARITY ;
 int CAM_UNEXP_BUSFREE ;
 scalar_t__ CLRBUSFREE ;
 scalar_t__ CLRLQOBUSFREE ;
 int CLRLQOINT1 ;
 scalar_t__ CLRSCSIPERR ;
 scalar_t__ CLRSELDO ;
 int CLRSINT0 ;
 int CLRSINT1 ;
 int CURRSCB ;
 scalar_t__ ENSELO ;
 scalar_t__ FALSE ;
 int LQCTL2 ;
 scalar_t__ LQOBUSFREE ;
 int LQOSTAT1 ;
 scalar_t__ LQOTOIDLE ;
 scalar_t__ PARITYERR ;
 int PERRDIAG ;
 int ROLE_INITIATOR ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 scalar_t__ SCB_IS_SILENT (struct scb*) ;
 scalar_t__ SCB_LIST_NULL ;
 int SCB_NEXT2 ;
 int SCSISEQ0 ;
 int WAITING_TID_HEAD ;
 int WAITING_TID_TAIL ;
 int ahd_abort_scbs (struct ahd_softc*,int ,char,int ,int ,int ,int ) ;
 int ahd_debug ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_flush_device_writes (struct ahd_softc*) ;
 int ahd_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_freeze_scb (struct scb*) ;
 scalar_t__ ahd_get_scbptr (struct ahd_softc*) ;
 scalar_t__ ahd_inb (struct ahd_softc*,int ) ;
 scalar_t__ ahd_inw (struct ahd_softc*,int ) ;
 scalar_t__ ahd_inw_scbram (struct ahd_softc*,int ) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,scalar_t__) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,scalar_t__) ;
 int ahd_outw (struct ahd_softc*,int ,scalar_t__) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_set_modes (struct ahd_softc*,scalar_t__,scalar_t__) ;
 int ahd_set_scbptr (struct ahd_softc*,scalar_t__) ;
 int ahd_set_transaction_status (struct scb*,int ) ;
 int panic (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
ahd_handle_pkt_busfree(struct ahd_softc *ahd, u_int busfreetime)
{
 u_int lqostat1;

 AHD_ASSERT_MODES(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
    ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
 lqostat1 = ahd_inb(ahd, LQOSTAT1);
 if ((lqostat1 & LQOBUSFREE) != 0) {
  struct scb *scb;
  u_int scbid;
  u_int saved_scbptr;
  u_int waiting_h;
  u_int waiting_t;
  u_int next;
  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
  scbid = ahd_inw(ahd, CURRSCB);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0))
         panic("SCB not valid during LQOBUSFREE");



  ahd_outb(ahd, CLRLQOINT1, CLRLQOBUSFREE);
  if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0)
   ahd_outb(ahd, CLRLQOINT1, 0);
  ahd_outb(ahd, SCSISEQ0, ahd_inb(ahd, SCSISEQ0) & ~ENSELO);
  ahd_flush_device_writes(ahd);
  ahd_outb(ahd, CLRSINT0, CLRSELDO);







  ahd_outb(ahd, LQCTL2, ahd_inb(ahd, LQCTL2) | LQOTOIDLE);





  waiting_h = ahd_inw(ahd, WAITING_TID_HEAD);
  saved_scbptr = ahd_get_scbptr(ahd);
  if (waiting_h != scbid) {

   ahd_outw(ahd, WAITING_TID_HEAD, scbid);
   waiting_t = ahd_inw(ahd, WAITING_TID_TAIL);
   if (waiting_t == waiting_h) {
    ahd_outw(ahd, WAITING_TID_TAIL, scbid);
    next = SCB_LIST_NULL;
   } else {
    ahd_set_scbptr(ahd, waiting_h);
    next = ahd_inw_scbram(ahd, SCB_NEXT2);
   }
   ahd_set_scbptr(ahd, scbid);
   ahd_outw(ahd, SCB_NEXT2, next);
  }
  ahd_set_scbptr(ahd, saved_scbptr);
  if (scb->crc_retry_count < AHD_MAX_LQ_CRC_ERRORS) {
   if (SCB_IS_SILENT(scb) == FALSE) {
    ahd_print_path(ahd, scb);
    printf("Probable outgoing LQ CRC error.  "
           "Retrying command\n");
   }
   scb->crc_retry_count++;
  } else {
   ahd_set_transaction_status(scb, CAM_UNCOR_PARITY);
   ahd_freeze_scb(scb);
   ahd_freeze_devq(ahd, scb);
  }

  return (0);
 } else if ((ahd_inb(ahd, PERRDIAG) & PARITYERR) != 0) {







  ahd_outb(ahd, CLRSINT1, CLRSCSIPERR|CLRBUSFREE);







  return (0);
 }
 if (ahd->src_mode != AHD_MODE_SCSI) {
  u_int scbid;
  struct scb *scb;

  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  ahd_print_path(ahd, scb);
  printf("Unexpected PKT busfree condition\n");
  ahd_dump_card_state(ahd);
  ahd_abort_scbs(ahd, SCB_GET_TARGET(ahd, scb), 'A',
          SCB_GET_LUN(scb), SCB_GET_TAG(scb),
          ROLE_INITIATOR, CAM_UNEXP_BUSFREE);


  return (1);
 }
 printf("%s: Unexpected PKT busfree condition\n", ahd_name(ahd));
 ahd_dump_card_state(ahd);

 return (1);
}
