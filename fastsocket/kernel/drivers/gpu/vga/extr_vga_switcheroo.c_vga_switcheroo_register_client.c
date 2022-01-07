
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_switcheroo_client_ops {int dummy; } ;
struct pci_dev {int dummy; } ;


 int register_client (struct pci_dev*,struct vga_switcheroo_client_ops const*,int,int) ;
 struct pci_dev* vga_default_device () ;

int vga_switcheroo_register_client(struct pci_dev *pdev,
       const struct vga_switcheroo_client_ops *ops)
{
 return register_client(pdev, ops, -1,
          pdev == vga_default_device());
}
