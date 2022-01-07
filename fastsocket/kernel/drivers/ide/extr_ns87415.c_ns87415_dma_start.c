
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int ide_dma_start (int *) ;
 int ns87415_prepare_drive (int *,int) ;

__attribute__((used)) static void ns87415_dma_start(ide_drive_t *drive)
{
 ns87415_prepare_drive(drive, 1);
 ide_dma_start(drive);
}
