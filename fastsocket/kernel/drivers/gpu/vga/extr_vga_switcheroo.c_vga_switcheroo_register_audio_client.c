
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_switcheroo_client_ops {int dummy; } ;
struct pci_dev {int dummy; } ;


 int ID_BIT_AUDIO ;
 int register_client (struct pci_dev*,struct vga_switcheroo_client_ops const*,int,int) ;

int vga_switcheroo_register_audio_client(struct pci_dev *pdev,
      const struct vga_switcheroo_client_ops *ops,
      int id, bool active)
{
 return register_client(pdev, ops, id | ID_BIT_AUDIO, active);
}
