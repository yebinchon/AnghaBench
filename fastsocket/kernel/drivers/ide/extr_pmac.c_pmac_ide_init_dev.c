
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int regbase; scalar_t__ mediabay; } ;
typedef TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_6__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ gendev; } ;
typedef TYPE_3__ ide_hwif_t ;
struct TYPE_9__ {int dev_flags; TYPE_3__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;


 int IDE_DFLAG_NOPROBE ;
 int MB_CD ;
 scalar_t__ check_media_bay_by_base (int ,int ) ;
 scalar_t__ dev_get_drvdata (int ) ;

__attribute__((used)) static void pmac_ide_init_dev(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 pmac_ide_hwif_t *pmif =
  (pmac_ide_hwif_t *)dev_get_drvdata(hwif->gendev.parent);

 if (pmif->mediabay) {






  drive->dev_flags |= IDE_DFLAG_NOPROBE;
 }
}
