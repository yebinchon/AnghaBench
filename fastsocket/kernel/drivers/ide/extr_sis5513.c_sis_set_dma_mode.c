
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int ide_drive_t ;


 scalar_t__ const XFER_UDMA_0 ;
 int sis_program_timings (int *,scalar_t__ const) ;
 int sis_program_udma_timings (int *,scalar_t__ const) ;

__attribute__((used)) static void sis_set_dma_mode(ide_drive_t *drive, const u8 speed)
{
 if (speed >= XFER_UDMA_0)
  sis_program_udma_timings(drive, speed);
 else
  sis_program_timings(drive, speed);
}
