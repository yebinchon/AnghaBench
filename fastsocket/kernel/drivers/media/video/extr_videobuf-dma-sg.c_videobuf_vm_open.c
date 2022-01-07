
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; int vm_start; struct videobuf_mapping* vm_private_data; } ;
struct videobuf_mapping {int count; } ;


 int dprintk (int,char*,struct videobuf_mapping*,int ,int ,int ) ;

__attribute__((used)) static void videobuf_vm_open(struct vm_area_struct *vma)
{
 struct videobuf_mapping *map = vma->vm_private_data;

 dprintk(2, "vm_open %p [count=%d,vma=%08lx-%08lx]\n", map,
  map->count, vma->vm_start, vma->vm_end);

 map->count++;
}
