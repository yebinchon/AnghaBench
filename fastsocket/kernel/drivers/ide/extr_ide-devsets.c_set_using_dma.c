
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* hwif; int id; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_6__ {int * dma_ops; } ;


 int EINVAL ;
 int EIO ;
 int EPERM ;
 scalar_t__ ata_id_has_dma (int ) ;
 int ide_dma_off (TYPE_2__*) ;
 scalar_t__ ide_set_dma (TYPE_2__*) ;

__attribute__((used)) static int set_using_dma(ide_drive_t *drive, int arg)
{
 if (arg < 0 || arg > 1)
  return -EINVAL;

 return -EPERM;

}
