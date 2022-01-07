
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_device {scalar_t__ set_vga_decode; } ;
struct pci_dev {int dummy; } ;


 unsigned int VGA_RSRC_LEGACY_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_lock ;
 int vga_update_device_decodes (struct vga_device*,unsigned int) ;
 struct vga_device* vgadev_find (struct pci_dev*) ;

__attribute__((used)) static void __vga_set_legacy_decoding(struct pci_dev *pdev, unsigned int decodes, bool userspace)
{
 struct vga_device *vgadev;
 unsigned long flags;

 decodes &= VGA_RSRC_LEGACY_MASK;

 spin_lock_irqsave(&vga_lock, flags);
 vgadev = vgadev_find(pdev);
 if (vgadev == ((void*)0))
  goto bail;


 if (userspace && vgadev->set_vga_decode)
  goto bail;


 vga_update_device_decodes(vgadev, decodes);





bail:
 spin_unlock_irqrestore(&vga_lock, flags);
}
