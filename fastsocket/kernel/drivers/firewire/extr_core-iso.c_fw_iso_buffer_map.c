
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; } ;
struct fw_iso_buffer {int page_count; int * pages; } ;


 scalar_t__ PAGE_SIZE ;
 int vm_insert_page (struct vm_area_struct*,unsigned long,int ) ;

int fw_iso_buffer_map(struct fw_iso_buffer *buffer, struct vm_area_struct *vma)
{
 unsigned long uaddr;
 int i, err;

 uaddr = vma->vm_start;
 for (i = 0; i < buffer->page_count; i++) {
  err = vm_insert_page(vma, uaddr, buffer->pages[i]);
  if (err)
   return err;

  uaddr += PAGE_SIZE;
 }

 return 0;
}
