
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ide_driver {int (* proc_entries ) (TYPE_1__*) ;} ;
struct TYPE_4__ {int * settings; int proc; } ;
typedef TYPE_1__ ide_drive_t ;


 int ide_remove_proc_entries (int ,int ) ;
 int ide_setting_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*) ;

void ide_proc_unregister_driver(ide_drive_t *drive, struct ide_driver *driver)
{
 ide_remove_proc_entries(drive->proc, driver->proc_entries(drive));

 mutex_lock(&ide_setting_mtx);




 drive->settings = ((void*)0);
 mutex_unlock(&ide_setting_mtx);
}
