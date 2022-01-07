
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {int kref; int device; } ;


 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_device_get (int ) ;
 int scsi_tape_release ;
 struct scsi_tape** scsi_tapes ;
 int st_dev_arr_lock ;
 int st_dev_max ;
 int st_ref_mutex ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static struct scsi_tape *scsi_tape_get(int dev)
{
 struct scsi_tape *STp = ((void*)0);

 mutex_lock(&st_ref_mutex);
 write_lock(&st_dev_arr_lock);

 if (dev < st_dev_max && scsi_tapes != ((void*)0))
  STp = scsi_tapes[dev];
 if (!STp) goto out;

 kref_get(&STp->kref);

 if (!STp->device)
  goto out_put;

 if (scsi_device_get(STp->device))
  goto out_put;

 goto out;

out_put:
 kref_put(&STp->kref, scsi_tape_release);
 STp = ((void*)0);
out:
 write_unlock(&st_dev_arr_lock);
 mutex_unlock(&st_ref_mutex);
 return STp;
}
