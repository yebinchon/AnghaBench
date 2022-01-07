
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dasd_eckd_private {int fcx_max_data; } ;
struct dasd_device {TYPE_1__* cdev; scalar_t__ private; } ;
typedef int __u8 ;
struct TYPE_2__ {int dev; } ;


 int EACCES ;
 int FCX_MAX_DATA_FACTOR ;
 int ccw_device_get_mdc (TYPE_1__*,int ) ;
 int dev_warn (int *,char*,int,int ,...) ;

__attribute__((used)) static int verify_fcx_max_data(struct dasd_device *device, __u8 lpm)
{
 struct dasd_eckd_private *private;
 int mdc;
 u32 fcx_max_data;

 private = (struct dasd_eckd_private *) device->private;
 if (private->fcx_max_data) {
  mdc = ccw_device_get_mdc(device->cdev, lpm);
  if ((mdc < 0)) {
   dev_warn(&device->cdev->dev,
     "Detecting the maximum data size for zHPF "
     "requests failed (rc=%d) for a new path %x\n",
     mdc, lpm);
   return mdc;
  }
  fcx_max_data = mdc * FCX_MAX_DATA_FACTOR;
  if (fcx_max_data < private->fcx_max_data) {
   dev_warn(&device->cdev->dev,
     "The maximum data size for zHPF requests %u "
     "on a new path %x is below the active maximum "
     "%u\n", fcx_max_data, lpm,
     private->fcx_max_data);
   return -EACCES;
  }
 }
 return 0;
}
