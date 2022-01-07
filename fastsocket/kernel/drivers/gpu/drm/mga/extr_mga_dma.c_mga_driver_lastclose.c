
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int FULL_CLEANUP ;
 int mga_do_cleanup_dma (struct drm_device*,int ) ;

void mga_driver_lastclose(struct drm_device *dev)
{
 mga_do_cleanup_dma(dev, FULL_CLEANUP);
}
