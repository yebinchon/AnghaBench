
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si470x_device {unsigned char software_version; unsigned char hardware_version; TYPE_1__* intf; } ;
typedef int buf ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 unsigned char SCRATCH_REPORT ;
 int SCRATCH_REPORT_SIZE ;
 int dev_warn (int *,char*,int) ;
 int si470x_get_report (struct si470x_device*,void*,int) ;

__attribute__((used)) static int si470x_get_scratch_page_versions(struct si470x_device *radio)
{
 unsigned char buf[SCRATCH_REPORT_SIZE];
 int retval;

 buf[0] = SCRATCH_REPORT;

 retval = si470x_get_report(radio, (void *) &buf, sizeof(buf));

 if (retval < 0)
  dev_warn(&radio->intf->dev, "si470x_get_scratch: "
   "si470x_get_report returned %d\n", retval);
 else {
  radio->software_version = buf[1];
  radio->hardware_version = buf[2];
 }

 return (retval < 0) ? -EINVAL : 0;
}
