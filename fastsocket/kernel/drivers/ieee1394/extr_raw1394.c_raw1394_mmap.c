
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file_info {scalar_t__ iso_state; int state_mutex; TYPE_1__* iso_handle; } ;
struct file {struct file_info* private_data; } ;
struct TYPE_2__ {int data_buf; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ RAW1394_ISO_INACTIVE ;
 int dma_region_mmap (int *,struct file*,struct vm_area_struct*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int raw1394_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct file_info *fi = file->private_data;
 int ret;

 if (!mutex_trylock(&fi->state_mutex))
  return -EAGAIN;

 if (fi->iso_state == RAW1394_ISO_INACTIVE)
  ret = -EINVAL;
 else
  ret = dma_region_mmap(&fi->iso_handle->data_buf, file, vma);

 mutex_unlock(&fi->state_mutex);

 return ret;
}
