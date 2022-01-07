
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_block {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_radeon_private_t ;
struct TYPE_2__ {int size; int start; int region; } ;
typedef TYPE_1__ drm_radeon_mem_init_heap_t ;


 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 struct mem_block** get_heap (int *,int ) ;
 int init_heap (struct mem_block**,int ,int ) ;

int radeon_mem_init_heap(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_mem_init_heap_t *initheap = data;
 struct mem_block **heap;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 heap = get_heap(dev_priv, initheap->region);
 if (!heap)
  return -EFAULT;

 if (*heap) {
  DRM_ERROR("heap already initialized?");
  return -EFAULT;
 }

 return init_heap(heap, initheap->start, initheap->size);
}
