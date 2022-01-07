
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_tape {int kref; TYPE_2__* modes; struct scsi_device* device; } ;
struct TYPE_3__ {int kobj; } ;
struct scsi_device {TYPE_1__ sdev_gendev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int ** cdevs; } ;


 int MKDEV (int ,int ) ;
 int SCSI_TAPE_MAJOR ;
 int ST_NBR_MODES ;
 int TAPE_MINOR (int,int,int) ;
 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_tape_release ;
 struct scsi_tape** scsi_tapes ;
 int st_dev_arr_lock ;
 int st_dev_max ;
 int st_nr_dev ;
 int st_ref_mutex ;
 int st_sysfs_class ;
 int sysfs_remove_link (int *,char*) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int st_remove(struct device *dev)
{
 struct scsi_device *SDp = to_scsi_device(dev);
 struct scsi_tape *tpnt;
 int i, j, mode;

 write_lock(&st_dev_arr_lock);
 for (i = 0; i < st_dev_max; i++) {
  tpnt = scsi_tapes[i];
  if (tpnt != ((void*)0) && tpnt->device == SDp) {
   scsi_tapes[i] = ((void*)0);
   st_nr_dev--;
   write_unlock(&st_dev_arr_lock);
   sysfs_remove_link(&tpnt->device->sdev_gendev.kobj,
       "tape");
   for (mode = 0; mode < ST_NBR_MODES; ++mode) {
    for (j=0; j < 2; j++) {
     device_destroy(st_sysfs_class,
             MKDEV(SCSI_TAPE_MAJOR,
            TAPE_MINOR(i, mode, j)));
     cdev_del(tpnt->modes[mode].cdevs[j]);
     tpnt->modes[mode].cdevs[j] = ((void*)0);
    }
   }

   mutex_lock(&st_ref_mutex);
   kref_put(&tpnt->kref, scsi_tape_release);
   mutex_unlock(&st_ref_mutex);
   return 0;
  }
 }

 write_unlock(&st_dev_arr_lock);
 return 0;
}
