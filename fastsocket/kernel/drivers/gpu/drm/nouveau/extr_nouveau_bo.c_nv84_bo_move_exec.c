
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_reg {int num_pages; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int offset; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int,int) ;
 int NvSubCopy ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int PAGE_SHIFT ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int
nv84_bo_move_exec(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
    struct ttm_mem_reg *old_mem, struct ttm_mem_reg *new_mem)
{
 struct nouveau_mem *node = old_mem->mm_node;
 int ret = RING_SPACE(chan, 7);
 if (ret == 0) {
  BEGIN_NV04(chan, NvSubCopy, 0x0304, 6);
  OUT_RING (chan, new_mem->num_pages << PAGE_SHIFT);
  OUT_RING (chan, upper_32_bits(node->vma[0].offset));
  OUT_RING (chan, lower_32_bits(node->vma[0].offset));
  OUT_RING (chan, upper_32_bits(node->vma[1].offset));
  OUT_RING (chan, lower_32_bits(node->vma[1].offset));
  OUT_RING (chan, 0x00000000 );
 }
 return ret;
}
