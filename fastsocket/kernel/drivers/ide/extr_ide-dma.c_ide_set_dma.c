
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int ide_dma_check (int *) ;
 int ide_dma_off_quietly (int *) ;
 int ide_dma_on (int *) ;

int ide_set_dma(ide_drive_t *drive)
{
 int rc;







 ide_dma_off_quietly(drive);

 rc = ide_dma_check(drive);
 if (rc)
  return rc;

 ide_dma_on(drive);

 return 0;
}
