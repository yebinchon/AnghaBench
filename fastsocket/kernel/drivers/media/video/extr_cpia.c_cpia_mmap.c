
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct video_device {int dummy; } ;
struct file {struct video_device* private_data; } ;
struct cam_data {int busy_lock; scalar_t__ frame_buf; int ops; } ;


 unsigned long CPIA_MAX_FRAME_SIZE ;
 int DBG (char*,unsigned long) ;
 int EAGAIN ;
 int EINTR ;
 int EINVAL ;
 int ENODEV ;
 unsigned long FRAME_NUM ;
 int PAGE_SHARED ;
 unsigned long PAGE_SIZE ;
 int allocate_frame_buf (struct cam_data*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 struct cam_data* video_get_drvdata (struct video_device*) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int cpia_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct video_device *dev = file->private_data;
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end - vma->vm_start;
 unsigned long page, pos;
 struct cam_data *cam = video_get_drvdata(dev);
 int retval;

 if (!cam || !cam->ops)
  return -ENODEV;

 DBG("cpia_mmap: %ld\n", size);

 if (size > FRAME_NUM*CPIA_MAX_FRAME_SIZE)
  return -EINVAL;

 if (!cam || !cam->ops)
  return -ENODEV;


 if (mutex_lock_interruptible(&cam->busy_lock))
  return -EINTR;

 if (!cam->frame_buf) {
  if ((retval = allocate_frame_buf(cam))) {
   mutex_unlock(&cam->busy_lock);
   return retval;
  }
 }

 pos = (unsigned long)(cam->frame_buf);
 while (size > 0) {
  page = vmalloc_to_pfn((void *)pos);
  if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
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

 DBG("cpia_mmap: %ld\n", size);
 mutex_unlock(&cam->busy_lock);

 return 0;
}
