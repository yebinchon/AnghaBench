
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int i810_flush_queue (struct drm_device*) ;

__attribute__((used)) static int i810_flush_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 LOCK_TEST_WITH_RETURN(dev, file_priv);

 i810_flush_queue(dev);
 return 0;
}
