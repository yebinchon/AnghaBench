
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_start; } ;
struct fb_info {int dummy; } ;


 int cfag12864b_buffer ;
 int virt_to_page (int ) ;
 int vm_insert_page (struct vm_area_struct*,int ,int ) ;

__attribute__((used)) static int cfag12864bfb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 return vm_insert_page(vma, vma->vm_start,
  virt_to_page(cfag12864b_buffer));
}
