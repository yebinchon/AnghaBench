
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int pci_set_resource_alignment_param (char const*,size_t) ;

__attribute__((used)) static ssize_t pci_resource_alignment_store(struct bus_type *bus,
     const char *buf, size_t count)
{
 return pci_set_resource_alignment_param(buf, count);
}
