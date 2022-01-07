
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;


 int pci_mmap_resource (struct kobject*,struct bin_attribute*,struct vm_area_struct*,int) ;

__attribute__((used)) static int pci_mmap_resource_sparse(struct file *filp, struct kobject *kobj,
        struct bin_attribute *attr,
        struct vm_area_struct *vma)
{
 return pci_mmap_resource(kobj, attr, vma, 1);
}
