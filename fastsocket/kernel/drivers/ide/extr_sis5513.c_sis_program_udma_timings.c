
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_drive_t ;


 scalar_t__ ATA_133 ;
 scalar_t__ chipset_family ;
 int sis_ata133_program_udma_timings (int *,int const) ;
 int sis_ata33_program_udma_timings (int *,int const) ;

__attribute__((used)) static void sis_program_udma_timings(ide_drive_t *drive, const u8 mode)
{
 if (chipset_family >= ATA_133)
  sis_ata133_program_udma_timings(drive, mode);
 else
  sis_ata33_program_udma_timings(drive, mode);
}
