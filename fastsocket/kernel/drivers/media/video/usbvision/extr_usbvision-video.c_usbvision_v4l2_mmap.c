
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; size_t vm_pgoff; } ;
struct usb_usbvision {size_t num_frames; TYPE_1__* frame; int max_frame_size; } ;
struct file {int dummy; } ;
struct TYPE_2__ {void* data; } ;


 int DBG_MMAP ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 size_t PAGE_ALIGN (int ) ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PDEBUG (int ,char*) ;
 int USBVISION_IS_OPERATIONAL (struct usb_usbvision*) ;
 int VM_IO ;
 int VM_RESERVED ;
 int VM_WRITE ;
 struct usb_usbvision* video_drvdata (struct file*) ;
 scalar_t__ vm_insert_page (struct vm_area_struct*,unsigned long,int ) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static int usbvision_v4l2_mmap(struct file *file, struct vm_area_struct *vma)
{
 unsigned long size = vma->vm_end - vma->vm_start,
  start = vma->vm_start;
 void *pos;
 u32 i;
 struct usb_usbvision *usbvision = video_drvdata(file);

 PDEBUG(DBG_MMAP, "mmap");

 if (!USBVISION_IS_OPERATIONAL(usbvision))
  return -EFAULT;

 if (!(vma->vm_flags & VM_WRITE) ||
     size != PAGE_ALIGN(usbvision->max_frame_size)) {
  return -EINVAL;
 }

 for (i = 0; i < usbvision->num_frames; i++) {
  if (((PAGE_ALIGN(usbvision->max_frame_size)*i) >> PAGE_SHIFT) ==
      vma->vm_pgoff)
   break;
 }
 if (i == usbvision->num_frames) {
  PDEBUG(DBG_MMAP,
         "mmap: user supplied mapping address is out of range");
  return -EINVAL;
 }


 vma->vm_flags |= VM_IO;
 vma->vm_flags |= VM_RESERVED;

 pos = usbvision->frame[i].data;
 while (size > 0) {
  if (vm_insert_page(vma, start, vmalloc_to_page(pos))) {
   PDEBUG(DBG_MMAP, "mmap: vm_insert_page failed");
   return -EAGAIN;
  }
  start += PAGE_SIZE;
  pos += PAGE_SIZE;
  size -= PAGE_SIZE;
 }

 return 0;
}
