
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct video_device {int dummy; } ;
struct usb_ov511 {int lock; scalar_t__ fbuf; int maxheight; int maxwidth; int * dev; } ;
struct file {struct video_device* private_data; } ;


 int EAGAIN ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int MAX_DATA_SIZE (int ,int ) ;
 int OV511_NUMFRAMES ;
 int PAGE_SHARED ;
 int PAGE_SIZE ;
 int PDEBUG (int,char*,unsigned long,unsigned long) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,int,int ) ;
 struct usb_ov511* video_get_drvdata (struct video_device*) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int
ov51x_v4l1_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct video_device *vdev = file->private_data;
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end - vma->vm_start;
 struct usb_ov511 *ov = video_get_drvdata(vdev);
 unsigned long page, pos;

 if (ov->dev == ((void*)0))
  return -EIO;

 PDEBUG(4, "mmap: %ld (%lX) bytes", size, size);

 if (size > (((OV511_NUMFRAMES
        * MAX_DATA_SIZE(ov->maxwidth, ov->maxheight)
        + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))))
  return -EINVAL;

 if (mutex_lock_interruptible(&ov->lock))
  return -EINTR;

 pos = (unsigned long)ov->fbuf;
 while (size > 0) {
  page = vmalloc_to_pfn((void *)pos);
  if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
   mutex_unlock(&ov->lock);
   return -EAGAIN;
  }
  start += PAGE_SIZE;
  pos += PAGE_SIZE;
  if (size > PAGE_SIZE)
   size -= PAGE_SIZE;
  else
   size = 0;
 }

 mutex_unlock(&ov->lock);
 return 0;
}
