
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; int vm_flags; int * vm_ops; struct file* vm_file; struct vino_framebuffer* vm_private_data; int vm_page_prot; } ;
struct TYPE_2__ {unsigned long page_count; scalar_t__* virtual; } ;
struct vino_framebuffer {unsigned long offset; int map_count; TYPE_1__ desc_table; } ;
struct vino_channel_settings {int mutex; int fb_queue; scalar_t__ reading; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_RESERVED ;
 int VM_SHARED ;
 int VM_WRITE ;
 int dprintk (char*,...) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 struct vino_framebuffer* vino_queue_get_buffer (int *,unsigned int) ;
 unsigned int vino_queue_get_length (int *) ;
 int vino_vm_ops ;
 unsigned long virt_to_phys (void*) ;

__attribute__((used)) static int vino_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct vino_channel_settings *vcs = video_drvdata(file);

 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end - vma->vm_start;
 unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;

 struct vino_framebuffer *fb = ((void*)0);
 unsigned int i, length;
 int ret = 0;

 dprintk("mmap():\n");



 if (mutex_lock_interruptible(&vcs->mutex))
  return -EINTR;

 if (vcs->reading) {
  ret = -EBUSY;
  goto out;
 }



 if (!(vma->vm_flags & VM_WRITE)) {
  dprintk("mmap(): app bug: PROT_WRITE please\n");
  ret = -EINVAL;
  goto out;
 }
 if (!(vma->vm_flags & VM_SHARED)) {
  dprintk("mmap(): app bug: MAP_SHARED please\n");
  ret = -EINVAL;
  goto out;
 }


 length = vino_queue_get_length(&vcs->fb_queue);
 if (length == 0) {
  dprintk("mmap(): queue not initialized\n");
  ret = -EINVAL;
  goto out;
 }

 for (i = 0; i < length; i++) {
  fb = vino_queue_get_buffer(&vcs->fb_queue, i);
  if (fb == ((void*)0)) {
   dprintk("mmap(): vino_queue_get_buffer() failed\n");
   ret = -EINVAL;
   goto out;
  }

  if (fb->offset == offset)
   goto found;
 }

 dprintk("mmap(): invalid offset = %lu\n", offset);
 ret = -EINVAL;
 goto out;

found:
 dprintk("mmap(): buffer = %d\n", i);

 if (size > (fb->desc_table.page_count * PAGE_SIZE)) {
  dprintk("mmap(): failed: size = %lu > %lu\n",
   size, fb->desc_table.page_count * PAGE_SIZE);
  ret = -EINVAL;
  goto out;
 }

 for (i = 0; i < fb->desc_table.page_count; i++) {
  unsigned long pfn =
   virt_to_phys((void *)fb->desc_table.virtual[i]) >>
   PAGE_SHIFT;

  if (size < PAGE_SIZE)
   break;


  if (remap_pfn_range(vma, start, pfn, PAGE_SIZE,
        vma->vm_page_prot)) {
   dprintk("mmap(): remap_pfn_range() failed\n");
   ret = -EAGAIN;
   goto out;
  }

  start += PAGE_SIZE;
  size -= PAGE_SIZE;
 }

 fb->map_count = 1;

 vma->vm_flags |= VM_DONTEXPAND | VM_RESERVED;
 vma->vm_flags &= ~VM_IO;
 vma->vm_private_data = fb;
 vma->vm_file = file;
 vma->vm_ops = &vino_vm_ops;

out:
 mutex_unlock(&vcs->mutex);

 return ret;
}
