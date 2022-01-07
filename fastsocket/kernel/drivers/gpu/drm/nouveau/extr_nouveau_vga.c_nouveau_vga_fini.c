
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int pdev; } ;


 int vga_client_register (int ,int *,int *,int *) ;
 int vga_switcheroo_unregister_client (int ) ;

void
nouveau_vga_fini(struct nouveau_drm *drm)
{
 struct drm_device *dev = drm->dev;
 vga_switcheroo_unregister_client(dev->pdev);
 vga_client_register(dev->pdev, ((void*)0), ((void*)0), ((void*)0));
}
