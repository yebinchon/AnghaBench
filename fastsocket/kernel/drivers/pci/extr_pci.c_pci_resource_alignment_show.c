
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int pci_get_resource_alignment_param (char*,int ) ;

__attribute__((used)) static ssize_t pci_resource_alignment_show(struct bus_type *bus, char *buf)
{
 return pci_get_resource_alignment_param(buf, PAGE_SIZE);
}
