
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int ew; } ;
struct device {int dummy; } ;


 int execute_in_process_context (int ,int *) ;
 int scsi_device_dev_release_usercontext ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static void scsi_device_dev_release(struct device *dev)
{
 struct scsi_device *sdp = to_scsi_device(dev);
 execute_in_process_context(scsi_device_dev_release_usercontext,
       &sdp->ew);
}
