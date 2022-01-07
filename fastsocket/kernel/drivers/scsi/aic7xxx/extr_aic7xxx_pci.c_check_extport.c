
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct seeprom_descriptor {scalar_t__ sd_chip; int sd_DI; int sd_DO; int sd_CK; int sd_CS; int sd_RDY; int sd_MS; void* sd_dataout_offset; void* sd_status_offset; void* sd_control_offset; struct ahc_softc* sd_ahc; } ;
struct seeprom_config {int adapter_control; } ;
struct ahc_softc {int flags; char channel; int features; struct seeprom_config* seep_config; } ;


 int AHC_HAS_TERM_LOGIC ;
 int AHC_LARGE_SEEPROM ;
 int AHC_SCB_CONFIG_USED ;
 int AHC_SPIOCAP ;
 int AHC_USEDEFAULTS ;
 scalar_t__ C46 ;
 scalar_t__ C56_66 ;
 int CFSTERM ;
 int CLRBRKADRINT ;
 int CLRINT ;
 int CLRPARERR ;
 int FALSE ;
 int M_DEVBUF ;
 int SCBPTR ;
 scalar_t__ SCB_BASE ;
 int SEECK ;
 int SEECS ;
 void* SEECTL ;
 int SEEDI ;
 int SEEDO ;
 int SEEMS ;
 int SEERDY ;
 scalar_t__ SPIOCAP ;
 scalar_t__ SRAM_BASE ;
 int SSPIOCPS ;
 int STPWEN ;
 int ahc_acquire_seeprom (struct ahc_softc*,struct seeprom_descriptor*) ;
 int ahc_inb (struct ahc_softc*,scalar_t__) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_parse_pci_eeprom (struct ahc_softc*,struct seeprom_config*) ;
 int ahc_read_seeprom (struct seeprom_descriptor*,int*,int,int) ;
 int ahc_release_seeprom (struct seeprom_descriptor*) ;
 int ahc_verify_cksum (struct seeprom_config*) ;
 scalar_t__ bootverbose ;
 int configure_termination (struct ahc_softc*,struct seeprom_descriptor*,int,int*) ;
 int free (struct seeprom_config*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
check_extport(struct ahc_softc *ahc, u_int *sxfrctl1)
{
 struct seeprom_descriptor sd;
 struct seeprom_config *sc;
 int have_seeprom;
 int have_autoterm;

 sd.sd_ahc = ahc;
 sd.sd_control_offset = SEECTL;
 sd.sd_status_offset = SEECTL;
 sd.sd_dataout_offset = SEECTL;
 sc = ahc->seep_config;







 if (ahc->flags & AHC_LARGE_SEEPROM)
  sd.sd_chip = C56_66;
 else
  sd.sd_chip = C46;

 sd.sd_MS = SEEMS;
 sd.sd_RDY = SEERDY;
 sd.sd_CS = SEECS;
 sd.sd_CK = SEECK;
 sd.sd_DO = SEEDO;
 sd.sd_DI = SEEDI;

 have_seeprom = ahc_acquire_seeprom(ahc, &sd);
 if (have_seeprom) {

  if (bootverbose)
   printf("%s: Reading SEEPROM...", ahc_name(ahc));

  for (;;) {
   u_int start_addr;

   start_addr = 32 * (ahc->channel - 'A');

   have_seeprom = ahc_read_seeprom(&sd, (uint16_t *)sc,
       start_addr,
       sizeof(*sc)/2);

   if (have_seeprom)
    have_seeprom = ahc_verify_cksum(sc);

   if (have_seeprom != 0 || sd.sd_chip == C56_66) {
    if (bootverbose) {
     if (have_seeprom == 0)
      printf ("checksum error\n");
     else
      printf ("done.\n");
    }
    break;
   }
   sd.sd_chip = C56_66;
  }
  ahc_release_seeprom(&sd);


  if (sd.sd_chip == C56_66)
   ahc->flags |= AHC_LARGE_SEEPROM;
 }

 if (!have_seeprom) {







  ahc_outb(ahc, SCBPTR, 2);
  if (ahc_inb(ahc, SCB_BASE) == 'A'
   && ahc_inb(ahc, SCB_BASE + 1) == 'D'
   && ahc_inb(ahc, SCB_BASE + 2) == 'P'
   && ahc_inb(ahc, SCB_BASE + 3) == 'T') {
   uint16_t *sc_data;
   int i;

   sc_data = (uint16_t *)sc;
   for (i = 0; i < 32; i++, sc_data++) {
    int j;

    j = i * 2;
    *sc_data = ahc_inb(ahc, SRAM_BASE + j)
      | ahc_inb(ahc, SRAM_BASE + j + 1) << 8;
   }
   have_seeprom = ahc_verify_cksum(sc);
   if (have_seeprom)
    ahc->flags |= AHC_SCB_CONFIG_USED;
  }




  ahc_outb(ahc, CLRINT, CLRPARERR);
  ahc_outb(ahc, CLRINT, CLRBRKADRINT);
 }

 if (!have_seeprom) {
  if (bootverbose)
   printf("%s: No SEEPROM available.\n", ahc_name(ahc));
  ahc->flags |= AHC_USEDEFAULTS;
  free(ahc->seep_config, M_DEVBUF);
  ahc->seep_config = ((void*)0);
  sc = ((void*)0);
 } else {
  ahc_parse_pci_eeprom(ahc, sc);
 }







 have_autoterm = have_seeprom;






 if ((ahc->features & AHC_SPIOCAP) != 0) {
  if ((ahc_inb(ahc, SPIOCAP) & SSPIOCPS) == 0)
   have_autoterm = FALSE;
 }

 if (have_autoterm) {
  ahc->flags |= AHC_HAS_TERM_LOGIC;
  ahc_acquire_seeprom(ahc, &sd);
  configure_termination(ahc, &sd, sc->adapter_control, sxfrctl1);
  ahc_release_seeprom(&sd);
 } else if (have_seeprom) {
  *sxfrctl1 &= ~STPWEN;
  if ((sc->adapter_control & CFSTERM) != 0)
   *sxfrctl1 |= STPWEN;
  if (bootverbose)
   printf("%s: Low byte termination %sabled\n",
          ahc_name(ahc),
          (*sxfrctl1 & STPWEN) ? "en" : "dis");
 }
}
