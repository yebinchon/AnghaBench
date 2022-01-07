
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timeval {int dummy; } ;
struct drm_device {int * _vblank_count; } ;


 scalar_t__ atomic_read (int *) ;
 int smp_rmb () ;
 struct timeval vblanktimestamp (struct drm_device*,int,scalar_t__) ;

u32 drm_vblank_count_and_time(struct drm_device *dev, int crtc,
         struct timeval *vblanktime)
{
 u32 cur_vblank;






 do {
  cur_vblank = atomic_read(&dev->_vblank_count[crtc]);
  *vblanktime = vblanktimestamp(dev, crtc, cur_vblank);
  smp_rmb();
 } while (cur_vblank != atomic_read(&dev->_vblank_count[crtc]));

 return cur_vblank;
}
