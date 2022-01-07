
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct uvd {int max_frame_size; scalar_t__ fbuf; } ;
struct file {struct uvd* private_data; } ;


 int CAMERA_IS_OPERATIONAL (struct uvd*) ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int PAGE_SHARED ;
 int PAGE_SIZE ;
 int USBVIDEO_NUMFRAMES ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,int,int ) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int usbvideo_v4l_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct uvd *uvd = file->private_data;
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end-vma->vm_start;
 unsigned long page, pos;

 if (!CAMERA_IS_OPERATIONAL(uvd))
  return -EFAULT;

 if (size > (((USBVIDEO_NUMFRAMES * uvd->max_frame_size) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1)))
  return -EINVAL;

 pos = (unsigned long) uvd->fbuf;
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
