
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int XRC_supported; } ;
struct TYPE_4__ {TYPE_1__ facilities; } ;
struct dasd_eckd_private {TYPE_2__ rdc_data; } ;
struct dasd_device {scalar_t__ private; } ;
struct ccw1 {int count; int flags; } ;
struct DE_eckd_data {int ga_extended; int ep_sys_time; } ;


 int CCW_FLAG_SLI ;
 int EACCES ;
 int ENOSYS ;
 int get_sync_clock (int *) ;

__attribute__((used)) static int
check_XRC (struct ccw1 *de_ccw,
           struct DE_eckd_data *data,
           struct dasd_device *device)
{
        struct dasd_eckd_private *private;
 int rc;

        private = (struct dasd_eckd_private *) device->private;
 if (!private->rdc_data.facilities.XRC_supported)
  return 0;


 data->ga_extended |= 0x08;
 data->ga_extended |= 0x02;

 rc = get_sync_clock(&data->ep_sys_time);

 if (rc == -ENOSYS || rc == -EACCES)
  rc = 0;

 de_ccw->count = sizeof(struct DE_eckd_data);
 de_ccw->flags |= CCW_FLAG_SLI;
 return rc;
}
