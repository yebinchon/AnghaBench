
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_device {void (* irq_set_state ) (void*,int) ;unsigned int (* set_vga_decode ) (void*,int) ;void* cookie; } ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_lock ;
 struct vga_device* vgadev_find (struct pci_dev*) ;

int vga_client_register(struct pci_dev *pdev, void *cookie,
   void (*irq_set_state)(void *cookie, bool state),
   unsigned int (*set_vga_decode)(void *cookie, bool decode))
{
 int ret = -ENODEV;
 struct vga_device *vgadev;
 unsigned long flags;

 spin_lock_irqsave(&vga_lock, flags);
 vgadev = vgadev_find(pdev);
 if (!vgadev)
  goto bail;

 vgadev->irq_set_state = irq_set_state;
 vgadev->set_vga_decode = set_vga_decode;
 vgadev->cookie = cookie;
 ret = 0;

bail:
 spin_unlock_irqrestore(&vga_lock, flags);
 return ret;

}
