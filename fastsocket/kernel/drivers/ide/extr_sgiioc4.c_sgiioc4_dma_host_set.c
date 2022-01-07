
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int sgiioc4_clearirq (int *) ;

__attribute__((used)) static void sgiioc4_dma_host_set(ide_drive_t *drive, int on)
{
 if (!on)
  sgiioc4_clearirq(drive);
}
