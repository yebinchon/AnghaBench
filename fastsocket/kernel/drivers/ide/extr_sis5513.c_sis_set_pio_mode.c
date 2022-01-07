
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int ide_drive_t ;


 scalar_t__ const XFER_PIO_0 ;
 int config_drive_art_rwp (int *) ;
 int sis_program_timings (int *,scalar_t__ const) ;

__attribute__((used)) static void sis_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 config_drive_art_rwp(drive);
 sis_program_timings(drive, XFER_PIO_0 + pio);
}
