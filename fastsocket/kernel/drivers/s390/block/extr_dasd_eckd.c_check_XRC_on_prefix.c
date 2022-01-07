
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int XRC_supported; } ;
struct TYPE_7__ {TYPE_2__ facilities; } ;
struct dasd_eckd_private {TYPE_3__ rdc_data; } ;
struct dasd_device {scalar_t__ private; } ;
struct TYPE_8__ {int ga_extended; int ep_sys_time; } ;
struct TYPE_5__ {int time_stamp; } ;
struct PFX_eckd_data {TYPE_4__ define_extent; TYPE_1__ validity; } ;


 int EACCES ;
 int ENOSYS ;
 int get_sync_clock (int *) ;

__attribute__((used)) static int check_XRC_on_prefix(struct PFX_eckd_data *pfxdata,
          struct dasd_device *device)
{
 struct dasd_eckd_private *private;
 int rc;

 private = (struct dasd_eckd_private *) device->private;
 if (!private->rdc_data.facilities.XRC_supported)
  return 0;


 pfxdata->define_extent.ga_extended |= 0x08;
 pfxdata->define_extent.ga_extended |= 0x02;
 pfxdata->validity.time_stamp = 1;

 rc = get_sync_clock(&pfxdata->define_extent.ep_sys_time);

 if (rc == -ENOSYS || rc == -EACCES)
  rc = 0;
 return rc;
}
