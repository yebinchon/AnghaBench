
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int nouveau_dev (struct drm_device*) ;
 int nv_wr32 (int ,int,int) ;

void
nouveau_irq_uninstall(struct drm_device *dev)
{
 nv_wr32(nouveau_dev(dev), 0x000140, 0x00000000);
}
