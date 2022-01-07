
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_tape_obj {int dev; int * drive; } ;
typedef int ide_drive_t ;


 int ide_device_put (int *) ;
 int idetape_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void ide_tape_put(struct ide_tape_obj *tape)
{
 ide_drive_t *drive = tape->drive;

 mutex_lock(&idetape_ref_mutex);
 put_device(&tape->dev);
 ide_device_put(drive);
 mutex_unlock(&idetape_ref_mutex);
}
