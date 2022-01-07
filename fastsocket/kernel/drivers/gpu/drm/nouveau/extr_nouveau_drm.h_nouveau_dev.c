
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int device; } ;


 TYPE_1__* nouveau_drm (struct drm_device*) ;
 struct nouveau_device* nv_device (int ) ;

__attribute__((used)) static inline struct nouveau_device *
nouveau_dev(struct drm_device *dev)
{
 return nv_device(nouveau_drm(dev)->device);
}
