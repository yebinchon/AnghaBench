
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {int eeh_mode; } ;


 int EEH_MODE_SUPPORTED ;
 TYPE_1__* PCI_DN (struct device_node*) ;

struct device_node * find_device_pe(struct device_node *dn)
{
 while ((dn->parent) && PCI_DN(dn->parent) &&
       (PCI_DN(dn->parent)->eeh_mode & EEH_MODE_SUPPORTED)) {
  dn = dn->parent;
 }
 return dn;
}
