
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timeval {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_vblank_timestamp ) (struct drm_device*,int,int*,struct timeval*,unsigned int) ;} ;


 scalar_t__ drm_timestamp_precision ;
 struct timeval get_drm_timestamp () ;
 int stub1 (struct drm_device*,int,int*,struct timeval*,unsigned int) ;

u32 drm_get_last_vbltimestamp(struct drm_device *dev, int crtc,
         struct timeval *tvblank, unsigned flags)
{
 int ret;


 int max_error = (int) drm_timestamp_precision * 1000;


 if (dev->driver->get_vblank_timestamp && (max_error > 0)) {
  ret = dev->driver->get_vblank_timestamp(dev, crtc, &max_error,
       tvblank, flags);
  if (ret > 0)
   return (u32) ret;
 }




 *tvblank = get_drm_timestamp();

 return 0;
}
