
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cd {int kref; int disk; TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int request_queue; } ;


 int blk_queue_prep_rq (int ,int ) ;
 int del_gendisk (int ) ;
 struct scsi_cd* dev_get_drvdata (struct device*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_prep_fn ;
 int sr_kref_release ;
 int sr_ref_mutex ;

__attribute__((used)) static int sr_remove(struct device *dev)
{
 struct scsi_cd *cd = dev_get_drvdata(dev);

 blk_queue_prep_rq(cd->device->request_queue, scsi_prep_fn);
 del_gendisk(cd->disk);

 mutex_lock(&sr_ref_mutex);
 kref_put(&cd->kref, sr_kref_release);
 mutex_unlock(&sr_ref_mutex);

 return 0;
}
