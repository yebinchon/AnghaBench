
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcw {int dummy; } ;
struct ccw_device {int dummy; } ;


 int ccw_device_set_timeout (struct ccw_device*,int) ;
 int ccw_device_tm_start_key (struct ccw_device*,struct tcw*,unsigned long,int ,int ) ;

int ccw_device_tm_start_timeout_key(struct ccw_device *cdev, struct tcw *tcw,
        unsigned long intparm, u8 lpm, u8 key,
        int expires)
{
 int ret;

 ccw_device_set_timeout(cdev, expires);
 ret = ccw_device_tm_start_key(cdev, tcw, intparm, lpm, key);
 if (ret != 0)
  ccw_device_set_timeout(cdev, 0);
 return ret;
}
