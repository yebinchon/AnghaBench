
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;



__attribute__((used)) static int
find_OF_pci_device_filter(struct device_node* node, void* data)
{
 return ((void *)node == data);
}
