
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_long ;
typedef int u_int16_t ;
typedef int u_int ;
struct seeprom_descriptor {int sd_DI; int sd_DO; int sd_CK; int sd_CS; int sd_RDY; scalar_t__ sd_MS; void* sd_chip; void* sd_dataout_offset; void* sd_status_offset; void* sd_control_offset; struct ahc_softc* sd_ahc; } ;
struct seeprom_config {int dummy; } ;
struct ahc_softc {int chip; int flags; char channel; int * seep_config; } ;


 int AHC_LARGE_SEEPROM ;
 int AHC_PCI ;
 int AHC_VL ;
 void* C46 ;
 void* C56_66 ;
 int CK_2840 ;
 int CS_2840 ;
 int DI_2840 ;
 int DO_2840 ;
 int EEPROM_TF ;
 int EINVAL ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int SEECK ;
 int SEECS ;
 void* SEECTL ;
 void* SEECTL_2840 ;
 int SEEDI ;
 int SEEDO ;
 scalar_t__ SEEMS ;
 int SEERDY ;
 void* STATUS_2840 ;
 int TRUE ;
 int ahc_acquire_seeprom (struct ahc_softc*,struct seeprom_descriptor*) ;
 int ahc_is_paused (struct ahc_softc*) ;
 int ahc_lock (struct ahc_softc*,int *) ;
 int ahc_pause (struct ahc_softc*) ;
 int ahc_read_seeprom (struct seeprom_descriptor*,int *,int,int) ;
 int ahc_release_seeprom (struct seeprom_descriptor*) ;
 int ahc_unlock (struct ahc_softc*,int *) ;
 int ahc_unpause (struct ahc_softc*) ;
 int ahc_verify_cksum (struct seeprom_config*) ;
 int ahc_write_seeprom (struct seeprom_descriptor*,int *,int,int) ;
 int * malloc (int,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
ahc_proc_write_seeprom(struct ahc_softc *ahc, char *buffer, int length)
{
 struct seeprom_descriptor sd;
 int have_seeprom;
 u_long s;
 int paused;
 int written;


 written = -EINVAL;
 ahc_lock(ahc, &s);
 paused = ahc_is_paused(ahc);
 if (!paused)
  ahc_pause(ahc);

 if (length != sizeof(struct seeprom_config)) {
  printf("ahc_proc_write_seeprom: incorrect buffer size\n");
  goto done;
 }

 have_seeprom = ahc_verify_cksum((struct seeprom_config*)buffer);
 if (have_seeprom == 0) {
  printf("ahc_proc_write_seeprom: cksum verification failed\n");
  goto done;
 }

 sd.sd_ahc = ahc;
 if ((ahc->chip & AHC_VL) != 0) {
  sd.sd_control_offset = SEECTL_2840;
  sd.sd_status_offset = STATUS_2840;
  sd.sd_dataout_offset = STATUS_2840;
  sd.sd_chip = C46;
  sd.sd_MS = 0;
  sd.sd_RDY = EEPROM_TF;
  sd.sd_CS = CS_2840;
  sd.sd_CK = CK_2840;
  sd.sd_DO = DO_2840;
  sd.sd_DI = DI_2840;
  have_seeprom = TRUE;
 } else {
  printf("ahc_proc_write_seeprom: unsupported adapter type\n");
  goto done;
 }

 if (!have_seeprom) {
  printf("ahc_proc_write_seeprom: No Serial EEPROM\n");
  goto done;
 } else {
  u_int start_addr;

  if (ahc->seep_config == ((void*)0)) {
   ahc->seep_config = malloc(sizeof(*ahc->seep_config),
        M_DEVBUF, M_NOWAIT);
   if (ahc->seep_config == ((void*)0)) {
    printf("aic7xxx: Unable to allocate serial "
           "eeprom buffer.  Write failing\n");
    goto done;
   }
  }
  printf("aic7xxx: Writing Serial EEPROM\n");
  start_addr = 32 * (ahc->channel - 'A');
  ahc_write_seeprom(&sd, (u_int16_t *)buffer, start_addr,
      sizeof(struct seeprom_config)/2);
  ahc_read_seeprom(&sd, (uint16_t *)ahc->seep_config,
     start_addr, sizeof(struct seeprom_config)/2);




  written = length;
 }

done:
 if (!paused)
  ahc_unpause(ahc);
 ahc_unlock(ahc, &s);
 return (written);
}
