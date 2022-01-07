
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct vicam_camera {scalar_t__ framebuf; } ;
struct file {struct vicam_camera* private_data; } ;


 int DBG (char*,unsigned long) ;
 int EAGAIN ;
 int ENODEV ;
 int PAGE_SHARED ;
 unsigned long PAGE_SIZE ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int
vicam_mmap(struct file *file, struct vm_area_struct *vma)
{

 unsigned long page, pos;
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end-vma->vm_start;
 struct vicam_camera *cam = file->private_data;

 if (!cam)
  return -ENODEV;

 DBG("vicam_mmap: %ld\n", size);







 pos = (unsigned long)cam->framebuf;
 while (size > 0) {
  page = vmalloc_to_pfn((void *)pos);
  if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED))
   return -EAGAIN;

  start += PAGE_SIZE;
  pos += PAGE_SIZE;
  if (size > PAGE_SIZE)
   size -= PAGE_SIZE;
  else
   size = 0;
 }

 return 0;
}
