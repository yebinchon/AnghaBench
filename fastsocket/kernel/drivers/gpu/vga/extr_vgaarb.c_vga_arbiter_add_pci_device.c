
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vga_device {int decodes; int owns; int locks; int list; struct pci_dev* pdev; } ;
struct pci_dev {int class; struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_VGA ;
 int PCI_CLASS_DISPLAY_VGA ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int VGA_RSRC_LEGACY_IO ;
 int VGA_RSRC_LEGACY_MASK ;
 int VGA_RSRC_LEGACY_MEM ;
 int VGA_RSRC_NORMAL_IO ;
 int VGA_RSRC_NORMAL_MEM ;
 int kfree (struct vga_device*) ;
 struct vga_device* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memset (struct vga_device*,int ,int) ;
 int * pci_dev_get (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vga_arbiter_check_bridge_sharing (struct vga_device*) ;
 int vga_count ;
 int vga_decode_count ;
 int * vga_default ;
 int vga_iostate_to_str (int) ;
 int vga_list ;
 int vga_lock ;
 int * vgadev_find (struct pci_dev*) ;

__attribute__((used)) static bool vga_arbiter_add_pci_device(struct pci_dev *pdev)
{
 struct vga_device *vgadev;
 unsigned long flags;
 struct pci_bus *bus;
 struct pci_dev *bridge;
 u16 cmd;


 if ((pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
  return 0;


 vgadev = kmalloc(sizeof(struct vga_device), GFP_KERNEL);
 if (vgadev == ((void*)0)) {
  pr_err("vgaarb: failed to allocate pci device\n");




  return 0;
 }

 memset(vgadev, 0, sizeof(*vgadev));


 spin_lock_irqsave(&vga_lock, flags);
 if (vgadev_find(pdev) != ((void*)0)) {
  BUG_ON(1);
  goto fail;
 }
 vgadev->pdev = pdev;


 vgadev->decodes = VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
     VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;


 vga_decode_count++;



 pci_read_config_word(pdev, PCI_COMMAND, &cmd);
 if (cmd & PCI_COMMAND_IO)
  vgadev->owns |= VGA_RSRC_LEGACY_IO;
 if (cmd & PCI_COMMAND_MEMORY)
  vgadev->owns |= VGA_RSRC_LEGACY_MEM;


 bus = pdev->bus;
 while (bus) {
  bridge = bus->self;
  if (bridge) {
   u16 l;
   pci_read_config_word(bridge, PCI_BRIDGE_CONTROL,
          &l);
   if (!(l & PCI_BRIDGE_CTL_VGA)) {
    vgadev->owns = 0;
    break;
   }
  }
  bus = bus->parent;
 }





 if (vga_default == ((void*)0) &&
     ((vgadev->owns & VGA_RSRC_LEGACY_MASK) == VGA_RSRC_LEGACY_MASK))
  vga_default = pci_dev_get(pdev);


 vga_arbiter_check_bridge_sharing(vgadev);


 list_add(&vgadev->list, &vga_list);
 vga_count++;
 pr_info("vgaarb: device added: PCI:%s,decodes=%s,owns=%s,locks=%s\n",
  pci_name(pdev),
  vga_iostate_to_str(vgadev->decodes),
  vga_iostate_to_str(vgadev->owns),
  vga_iostate_to_str(vgadev->locks));

 spin_unlock_irqrestore(&vga_lock, flags);
 return 1;
fail:
 spin_unlock_irqrestore(&vga_lock, flags);
 kfree(vgadev);
 return 0;
}
