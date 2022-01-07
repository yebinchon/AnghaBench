
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_MODE_SCSI ;
 int ATNO ;
 int CLRINT ;
 int CLRLQIINT1 ;
 int CLRSCSIINT ;
 int DLZERO ;
 int LQCTL2 ;
 int LQIPHASE_LQ ;
 int LQIPHASE_NLQ ;
 int LQIRETRY ;
 int MDFFSTAT ;
 int SCSISIGO ;
 int TRUE ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_reset_channel (struct ahd_softc*,char,int ) ;
 int ahd_set_active_fifo (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_unpause (struct ahd_softc*) ;
 int panic (char*) ;
 int printf (char*) ;

__attribute__((used)) static void
ahd_handle_lqiphase_error(struct ahd_softc *ahd, u_int lqistat1)
{



 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 ahd_outb(ahd, CLRLQIINT1, lqistat1);
 ahd_set_active_fifo(ahd);
 if ((ahd_inb(ahd, SCSISIGO) & ATNO) != 0
  && (ahd_inb(ahd, MDFFSTAT) & DLZERO) != 0) {
  if ((lqistat1 & LQIPHASE_LQ) != 0) {
   printf("LQIRETRY for LQIPHASE_LQ\n");
   ahd_outb(ahd, LQCTL2, LQIRETRY);
  } else if ((lqistat1 & LQIPHASE_NLQ) != 0) {
   printf("LQIRETRY for LQIPHASE_NLQ\n");
   ahd_outb(ahd, LQCTL2, LQIRETRY);
  } else
   panic("ahd_handle_lqiphase_error: No phase errors\n");
  ahd_dump_card_state(ahd);
  ahd_outb(ahd, CLRINT, CLRSCSIINT);
  ahd_unpause(ahd);
 } else {
  printf("Reseting Channel for LQI Phase error\n");
  ahd_dump_card_state(ahd);
  ahd_reset_channel(ahd, 'A', TRUE);
 }
}
