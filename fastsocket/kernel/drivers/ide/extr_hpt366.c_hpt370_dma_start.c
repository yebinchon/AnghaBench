
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int hpt370_clear_engine (int *) ;
 int ide_dma_start (int *) ;

__attribute__((used)) static void hpt370_dma_start(ide_drive_t *drive)
{



 ide_dma_start(drive);
}
