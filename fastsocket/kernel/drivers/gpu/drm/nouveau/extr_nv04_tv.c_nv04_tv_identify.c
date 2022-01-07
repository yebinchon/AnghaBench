
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_i2c {int (* identify ) (struct nouveau_i2c*,int,char*,int ,int *) ;} ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_i2c* nouveau_i2c (int ) ;
 int nv04_tv_encoder_info ;
 int stub1 (struct nouveau_i2c*,int,char*,int ,int *) ;

int nv04_tv_identify(struct drm_device *dev, int i2c_index)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_i2c *i2c = nouveau_i2c(drm->device);

 return i2c->identify(i2c, i2c_index, "TV encoder",
        nv04_tv_encoder_info, ((void*)0));
}
