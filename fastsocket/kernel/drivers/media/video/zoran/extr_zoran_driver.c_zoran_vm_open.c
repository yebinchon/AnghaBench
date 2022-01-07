
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_mapping {int count; } ;
struct vm_area_struct {struct zoran_mapping* vm_private_data; } ;



__attribute__((used)) static void
zoran_vm_open (struct vm_area_struct *vma)
{
 struct zoran_mapping *map = vma->vm_private_data;

 map->count++;
}
