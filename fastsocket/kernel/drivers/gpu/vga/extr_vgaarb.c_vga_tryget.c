
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 scalar_t__ __vga_tryget (struct vga_device*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_check_first_use () ;
 struct pci_dev* vga_default_device () ;
 int vga_lock ;
 struct vga_device* vgadev_find (struct pci_dev*) ;

int vga_tryget(struct pci_dev *pdev, unsigned int rsrc)
{
 struct vga_device *vgadev;
 unsigned long flags;
 int rc = 0;

 vga_check_first_use();


 if (pdev == ((void*)0))
  pdev = vga_default_device();
 if (pdev == ((void*)0))
  return 0;
 spin_lock_irqsave(&vga_lock, flags);
 vgadev = vgadev_find(pdev);
 if (vgadev == ((void*)0)) {
  rc = -ENODEV;
  goto bail;
 }
 if (__vga_tryget(vgadev, rsrc))
  rc = -EBUSY;
bail:
 spin_unlock_irqrestore(&vga_lock, flags);
 return rc;
}
