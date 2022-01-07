
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ide_driver {int (* proc_entries ) (TYPE_1__*) ;int (* proc_devsets ) (TYPE_1__*) ;} ;
struct TYPE_6__ {int proc; int settings; } ;
typedef TYPE_1__ ide_drive_t ;


 int ide_add_proc_entries (int ,int ,TYPE_1__*) ;
 int ide_setting_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

void ide_proc_register_driver(ide_drive_t *drive, struct ide_driver *driver)
{
 mutex_lock(&ide_setting_mtx);
 drive->settings = driver->proc_devsets(drive);
 mutex_unlock(&ide_setting_mtx);

 ide_add_proc_entries(drive->proc, driver->proc_entries(drive), drive);
}
