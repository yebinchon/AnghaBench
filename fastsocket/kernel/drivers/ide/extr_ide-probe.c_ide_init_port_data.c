
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long data; int * function; } ;
struct TYPE_5__ {unsigned int index; char* name; int * tp_ops; int gendev_rel_comp; TYPE_2__ timer; int lock; int major; } ;
typedef TYPE_1__ ide_hwif_t ;


 int default_tp_ops ;
 int * ide_hwif_to_major ;
 int ide_port_init_devices_data (TYPE_1__*) ;
 int ide_timer_expiry ;
 int init_completion (int *) ;
 int init_timer (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ide_init_port_data(ide_hwif_t *hwif, unsigned int index)
{

 hwif->index = index;
 hwif->major = ide_hwif_to_major[index];

 hwif->name[0] = 'i';
 hwif->name[1] = 'd';
 hwif->name[2] = 'e';
 hwif->name[3] = '0' + index;

 spin_lock_init(&hwif->lock);

 init_timer(&hwif->timer);
 hwif->timer.function = &ide_timer_expiry;
 hwif->timer.data = (unsigned long)hwif;

 init_completion(&hwif->gendev_rel_comp);

 hwif->tp_ops = &default_tp_ops;

 ide_port_init_devices_data(hwif);
}
