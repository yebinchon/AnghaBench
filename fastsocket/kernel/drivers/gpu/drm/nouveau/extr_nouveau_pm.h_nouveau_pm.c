
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_pm {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm* pm; } ;


 TYPE_1__* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static inline struct nouveau_pm *
nouveau_pm(struct drm_device *dev)
{
 return nouveau_drm(dev)->pm;
}
