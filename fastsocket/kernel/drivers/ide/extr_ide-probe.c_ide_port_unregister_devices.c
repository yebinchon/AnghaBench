
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ present; } ;
typedef TYPE_1__ ide_hwif_t ;


 int __ide_port_unregister_devices (TYPE_1__*) ;
 int ide_cfg_mtx ;
 int ide_port_init_devices_data (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ide_port_unregister_devices(ide_hwif_t *hwif)
{
 mutex_lock(&ide_cfg_mtx);
 __ide_port_unregister_devices(hwif);
 hwif->present = 0;
 ide_port_init_devices_data(hwif);
 mutex_unlock(&ide_cfg_mtx);
}
