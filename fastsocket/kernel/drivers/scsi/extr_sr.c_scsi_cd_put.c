
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cd {int kref; struct scsi_device* device; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_device_put (struct scsi_device*) ;
 int sr_kref_release ;
 int sr_ref_mutex ;

__attribute__((used)) static void scsi_cd_put(struct scsi_cd *cd)
{
 struct scsi_device *sdev = cd->device;

 mutex_lock(&sr_ref_mutex);
 kref_put(&cd->kref, sr_kref_release);
 scsi_device_put(sdev);
 mutex_unlock(&sr_ref_mutex);
}
