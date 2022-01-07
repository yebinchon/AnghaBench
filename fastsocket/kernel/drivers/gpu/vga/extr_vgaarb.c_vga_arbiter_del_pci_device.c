
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_device {int decodes; int list; } ;
struct pci_dev {int dummy; } ;


 int VGA_RSRC_LEGACY_IO ;
 int VGA_RSRC_LEGACY_MEM ;
 int kfree (struct vga_device*) ;
 int list_del (int *) ;
 int pci_dev_put (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_arb_device_card_gone (struct pci_dev*) ;
 int vga_count ;
 int vga_decode_count ;
 struct pci_dev* vga_default ;
 int vga_lock ;
 int vga_wait_queue ;
 struct vga_device* vgadev_find (struct pci_dev*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static bool vga_arbiter_del_pci_device(struct pci_dev *pdev)
{
 struct vga_device *vgadev;
 unsigned long flags;
 bool ret = 1;

 spin_lock_irqsave(&vga_lock, flags);
 vgadev = vgadev_find(pdev);
 if (vgadev == ((void*)0)) {
  ret = 0;
  goto bail;
 }


 if (vga_default == pdev) {
  pci_dev_put(vga_default);
  vga_default = ((void*)0);
 }


 if (vgadev->decodes & (VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM))
  vga_decode_count--;


 list_del(&vgadev->list);
 vga_count--;



 vga_arb_device_card_gone(pdev);


 wake_up_all(&vga_wait_queue);
bail:
 spin_unlock_irqrestore(&vga_lock, flags);
 kfree(vgadev);
 return ret;
}
