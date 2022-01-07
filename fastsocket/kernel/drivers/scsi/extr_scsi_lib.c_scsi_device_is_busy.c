
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ device_busy; scalar_t__ queue_depth; scalar_t__ device_blocked; } ;



__attribute__((used)) static inline int scsi_device_is_busy(struct scsi_device *sdev)
{
 if (sdev->device_busy >= sdev->queue_depth || sdev->device_blocked)
  return 1;

 return 0;
}
