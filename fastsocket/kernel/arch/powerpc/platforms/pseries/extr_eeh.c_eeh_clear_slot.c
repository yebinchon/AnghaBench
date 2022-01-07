
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {int eeh_mode; scalar_t__ eeh_check_count; } ;


 TYPE_1__* PCI_DN (struct device_node*) ;
 int __eeh_clear_slot (struct device_node*,int) ;
 int confirm_error_lock ;
 struct device_node* find_device_pe (struct device_node*) ;
 int pcibios_find_pci_bus (struct device_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void eeh_clear_slot (struct device_node *dn, int mode_flag)
{
 unsigned long flags;
 spin_lock_irqsave(&confirm_error_lock, flags);

 dn = find_device_pe (dn);


 if (!pcibios_find_pci_bus(dn) && PCI_DN(dn->parent))
  dn = dn->parent;

 PCI_DN(dn)->eeh_mode &= ~mode_flag;
 PCI_DN(dn)->eeh_check_count = 0;
 __eeh_clear_slot(dn, mode_flag);
 spin_unlock_irqrestore(&confirm_error_lock, flags);
}
