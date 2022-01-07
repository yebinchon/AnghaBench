
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client {int pwr_state; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int active; int clients; } ;


 int VGA_SWITCHEROO_INIT ;
 int VGA_SWITCHEROO_NOT_FOUND ;
 struct vga_switcheroo_client* find_client_from_pci (int *,struct pci_dev*) ;
 TYPE_1__ vgasr_priv ;

int vga_switcheroo_get_client_state(struct pci_dev *pdev)
{
 struct vga_switcheroo_client *client;

 client = find_client_from_pci(&vgasr_priv.clients, pdev);
 if (!client)
  return VGA_SWITCHEROO_NOT_FOUND;
 if (!vgasr_priv.active)
  return VGA_SWITCHEROO_INIT;
 return client->pwr_state;
}
