
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_long ;
typedef int u_int16_t ;
typedef int u_int ;
struct seeprom_config {int dummy; } ;
struct ahd_softc {char channel; int * seep_config; } ;
typedef int ahd_mode_state ;


 int AHD_MODE_SCSI ;
 int EINVAL ;
 int FALSE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int ahd_acquire_seeprom (struct ahd_softc*) ;
 int ahd_is_paused (struct ahd_softc*) ;
 int ahd_lock (struct ahd_softc*,int *) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_read_seeprom (struct ahd_softc*,int *,int,int,int ) ;
 int ahd_release_seeprom (struct ahd_softc*) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_unlock (struct ahd_softc*,int *) ;
 int ahd_unpause (struct ahd_softc*) ;
 int ahd_verify_cksum (struct seeprom_config*) ;
 int ahd_write_seeprom (struct ahd_softc*,int *,int,int) ;
 int * malloc (int,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
ahd_proc_write_seeprom(struct ahd_softc *ahd, char *buffer, int length)
{
 ahd_mode_state saved_modes;
 int have_seeprom;
 u_long s;
 int paused;
 int written;


 written = -EINVAL;
 ahd_lock(ahd, &s);
 paused = ahd_is_paused(ahd);
 if (!paused)
  ahd_pause(ahd);

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
 if (length != sizeof(struct seeprom_config)) {
  printf("ahd_proc_write_seeprom: incorrect buffer size\n");
  goto done;
 }

 have_seeprom = ahd_verify_cksum((struct seeprom_config*)buffer);
 if (have_seeprom == 0) {
  printf("ahd_proc_write_seeprom: cksum verification failed\n");
  goto done;
 }

 have_seeprom = ahd_acquire_seeprom(ahd);
 if (!have_seeprom) {
  printf("ahd_proc_write_seeprom: No Serial EEPROM\n");
  goto done;
 } else {
  u_int start_addr;

  if (ahd->seep_config == ((void*)0)) {
   ahd->seep_config = malloc(sizeof(*ahd->seep_config),
        M_DEVBUF, M_NOWAIT);
   if (ahd->seep_config == ((void*)0)) {
    printf("aic79xx: Unable to allocate serial "
           "eeprom buffer.  Write failing\n");
    goto done;
   }
  }
  printf("aic79xx: Writing Serial EEPROM\n");
  start_addr = 32 * (ahd->channel - 'A');
  ahd_write_seeprom(ahd, (u_int16_t *)buffer, start_addr,
      sizeof(struct seeprom_config)/2);
  ahd_read_seeprom(ahd, (uint16_t *)ahd->seep_config,
     start_addr, sizeof(struct seeprom_config)/2,
                   FALSE);
  ahd_release_seeprom(ahd);
  written = length;
 }

done:
 ahd_restore_modes(ahd, saved_modes);
 if (!paused)
  ahd_unpause(ahd);
 ahd_unlock(ahd, &s);
 return (written);
}
