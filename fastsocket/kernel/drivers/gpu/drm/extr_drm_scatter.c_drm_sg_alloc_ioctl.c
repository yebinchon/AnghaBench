
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_scatter_gather {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_sg_alloc (struct drm_device*,struct drm_scatter_gather*) ;

int drm_sg_alloc_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_scatter_gather *request = data;

 return drm_sg_alloc(dev, request);

}
