
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {int kref; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_tape_release ;
 int st_ref_mutex ;

__attribute__((used)) static void scsi_tape_put(struct scsi_tape *STp)
{
 struct scsi_device *sdev = STp->device;

 mutex_lock(&st_ref_mutex);
 kref_put(&STp->kref, scsi_tape_release);
 scsi_device_put(sdev);
 mutex_unlock(&st_ref_mutex);
}
