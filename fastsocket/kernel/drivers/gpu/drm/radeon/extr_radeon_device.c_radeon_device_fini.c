
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int shutdown; int * rmmio; int * rio_mem; int pdev; } ;


 int DRM_INFO (char*) ;
 int iounmap (int *) ;
 int pci_iounmap (int ,int *) ;
 int radeon_bo_evict_vram (struct radeon_device*) ;
 int radeon_debugfs_remove_files (struct radeon_device*) ;
 int radeon_fini (struct radeon_device*) ;
 int vga_client_register (int ,int *,int *,int *) ;
 int vga_switcheroo_unregister_client (int ) ;

void radeon_device_fini(struct radeon_device *rdev)
{
 DRM_INFO("radeon: finishing device.\n");
 rdev->shutdown = 1;

 radeon_bo_evict_vram(rdev);
 radeon_fini(rdev);
 vga_switcheroo_unregister_client(rdev->pdev);
 vga_client_register(rdev->pdev, ((void*)0), ((void*)0), ((void*)0));
 if (rdev->rio_mem)
  pci_iounmap(rdev->pdev, rdev->rio_mem);
 rdev->rio_mem = ((void*)0);
 iounmap(rdev->rmmio);
 rdev->rmmio = ((void*)0);
 radeon_debugfs_remove_files(rdev);
}
