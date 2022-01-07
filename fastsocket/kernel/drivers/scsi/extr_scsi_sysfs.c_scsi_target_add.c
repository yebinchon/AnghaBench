
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ state; int dev; } ;


 scalar_t__ STARGET_CREATED ;
 scalar_t__ STARGET_RUNNING ;
 int dev_err (int *,char*,int) ;
 int device_add (int *) ;
 int get_device (int *) ;
 int put_device (int *) ;
 int scsi_target_reap (struct scsi_target*) ;
 int transport_add_device (int *) ;

__attribute__((used)) static int scsi_target_add(struct scsi_target *starget)
{
 int error;

 if (starget->state != STARGET_CREATED)
  return 0;

 error = device_add(&starget->dev);
 if (error) {
  dev_err(&starget->dev, "target device_add failed, error %d\n", error);
  get_device(&starget->dev);
  scsi_target_reap(starget);
  put_device(&starget->dev);
  return error;
 }
 transport_add_device(&starget->dev);
 starget->state = STARGET_RUNNING;

 return 0;
}
