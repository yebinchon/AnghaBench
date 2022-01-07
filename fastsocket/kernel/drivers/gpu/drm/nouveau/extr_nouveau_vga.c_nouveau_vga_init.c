
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int pdev; } ;


 int nouveau_switcheroo_ops ;
 int nouveau_vga_set_decode ;
 int vga_client_register (int ,struct drm_device*,int *,int ) ;
 int vga_switcheroo_register_client (int ,int *) ;

void
nouveau_vga_init(struct nouveau_drm *drm)
{
 struct drm_device *dev = drm->dev;
 vga_client_register(dev->pdev, dev, ((void*)0), nouveau_vga_set_decode);
 vga_switcheroo_register_client(dev->pdev, &nouveau_switcheroo_ops);
}
