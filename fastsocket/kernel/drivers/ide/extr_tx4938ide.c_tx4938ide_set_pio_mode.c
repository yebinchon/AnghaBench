
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct tx4938ide_platform_info {int gbus_clock; int ebus_ch; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_10__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_8__ {struct tx4938ide_platform_info* platform_data; } ;


 int ide_get_best_pio_mode (TYPE_3__*,int,int) ;
 TYPE_3__* ide_get_pair_dev (TYPE_3__*) ;
 int min (int ,int ) ;
 int tx4938ide_tune_ebusc (int ,int ,int ) ;

__attribute__((used)) static void tx4938ide_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 ide_hwif_t *hwif = drive->hwif;
 struct tx4938ide_platform_info *pdata = hwif->dev->platform_data;
 u8 safe = pio;
 ide_drive_t *pair;

 pair = ide_get_pair_dev(drive);
 if (pair)
  safe = min(safe, ide_get_best_pio_mode(pair, 255, 5));
 tx4938ide_tune_ebusc(pdata->ebus_ch, pdata->gbus_clock, safe);
}
