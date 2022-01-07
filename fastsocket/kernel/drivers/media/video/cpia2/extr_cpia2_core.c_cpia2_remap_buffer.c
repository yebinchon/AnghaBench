
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; } ;
struct camera_data {unsigned long frame_size; unsigned long num_frames; int mmapped; int busy_lock; scalar_t__ frame_buffer; int present; } ;


 int DBG (char*,unsigned long,unsigned long) ;
 int EAGAIN ;
 int EINVAL ;
 int ENODEV ;
 int ERESTARTSYS ;
 int PAGE_SHARED ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long kvirt_to_pa (unsigned long) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;

int cpia2_remap_buffer(struct camera_data *cam, struct vm_area_struct *vma)
{
 const char *adr = (const char *)vma->vm_start;
 unsigned long size = vma->vm_end-vma->vm_start;
 unsigned long start_offset = vma->vm_pgoff << PAGE_SHIFT;
 unsigned long start = (unsigned long) adr;
 unsigned long page, pos;

 if (!cam)
  return -ENODEV;

 DBG("mmap offset:%ld size:%ld\n", start_offset, size);


 if (mutex_lock_interruptible(&cam->busy_lock))
  return -ERESTARTSYS;

 if (!cam->present) {
  mutex_unlock(&cam->busy_lock);
  return -ENODEV;
 }

 if (size > cam->frame_size*cam->num_frames ||
     (start_offset % cam->frame_size) != 0 ||
     (start_offset+size > cam->frame_size*cam->num_frames)) {
  mutex_unlock(&cam->busy_lock);
  return -EINVAL;
 }

 pos = ((unsigned long) (cam->frame_buffer)) + start_offset;
 while (size > 0) {
  page = kvirt_to_pa(pos);
  if (remap_pfn_range(vma, start, page >> PAGE_SHIFT, PAGE_SIZE, PAGE_SHARED)) {
   mutex_unlock(&cam->busy_lock);
   return -EAGAIN;
  }
  start += PAGE_SIZE;
  pos += PAGE_SIZE;
  if (size > PAGE_SIZE)
   size -= PAGE_SIZE;
  else
   size = 0;
 }

 cam->mmapped = 1;
 mutex_unlock(&cam->busy_lock);
 return 0;
}
