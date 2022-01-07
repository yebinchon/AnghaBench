
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct module {int dummy; } ;
struct device {TYPE_3__* driver; } ;
struct TYPE_9__ {int gendev; TYPE_2__* hwif; } ;
typedef TYPE_4__ ide_drive_t ;
struct TYPE_8__ {struct module* owner; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {struct device** dev; } ;


 int module_put (struct module*) ;
 int put_device (int *) ;

void ide_device_put(ide_drive_t *drive)
{







 put_device(&drive->gendev);
}
