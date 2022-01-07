
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client {struct fb_info* fb_info; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int clients; } ;


 struct vga_switcheroo_client* find_client_from_pci (int *,struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

void vga_switcheroo_client_fb_set(struct pci_dev *pdev,
     struct fb_info *info)
{
 struct vga_switcheroo_client *client;

 mutex_lock(&vgasr_mutex);
 client = find_client_from_pci(&vgasr_priv.clients, pdev);
 if (client)
  client->fb_info = info;
 mutex_unlock(&vgasr_mutex);
}
