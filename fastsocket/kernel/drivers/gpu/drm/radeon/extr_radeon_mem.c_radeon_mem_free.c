
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_block {struct drm_file* file_priv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_radeon_private_t ;
struct TYPE_2__ {int region_offset; int region; } ;
typedef TYPE_1__ drm_radeon_mem_free_t ;


 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 struct mem_block* find_block (struct mem_block*,int ) ;
 int free_block (struct mem_block*) ;
 struct mem_block** get_heap (int *,int ) ;

int radeon_mem_free(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_mem_free_t *memfree = data;
 struct mem_block *block, **heap;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 heap = get_heap(dev_priv, memfree->region);
 if (!heap || !*heap)
  return -EFAULT;

 block = find_block(*heap, memfree->region_offset);
 if (!block)
  return -EFAULT;

 if (block->file_priv != file_priv)
  return -EPERM;

 free_block(block);
 return 0;
}
