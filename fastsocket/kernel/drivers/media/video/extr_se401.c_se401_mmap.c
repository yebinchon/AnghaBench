
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct video_device {int dummy; } ;
struct usb_se401 {int maxframesize; int lock; scalar_t__ fbuf; int * dev; } ;
struct file {struct video_device* private_data; } ;


 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int PAGE_SHARED ;
 int PAGE_SIZE ;
 int SE401_NUMFRAMES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,int,int ) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int se401_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct video_device *dev = file->private_data;
 struct usb_se401 *se401 = (struct usb_se401 *)dev;
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end-vma->vm_start;
 unsigned long page, pos;

 mutex_lock(&se401->lock);

 if (se401->dev == ((void*)0)) {
  mutex_unlock(&se401->lock);
  return -EIO;
 }
 if (size > (((SE401_NUMFRAMES * se401->maxframesize) + PAGE_SIZE - 1)
       & ~(PAGE_SIZE - 1))) {
  mutex_unlock(&se401->lock);
  return -EINVAL;
 }
 pos = (unsigned long)se401->fbuf;
 while (size > 0) {
  page = vmalloc_to_pfn((void *)pos);
  if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {
   mutex_unlock(&se401->lock);
   return -EAGAIN;
  }
  start += PAGE_SIZE;
  pos += PAGE_SIZE;
  if (size > PAGE_SIZE)
   size -= PAGE_SIZE;
  else
   size = 0;
 }
 mutex_unlock(&se401->lock);

 return 0;
}
