
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ block_size; } ;
struct nouveau_gpuobj {int flags; int size; int base; TYPE_2__ heap; scalar_t__ node; int parent; } ;
struct TYPE_3__ {int heap; } ;


 int NVOBJ_FLAG_ZERO_FREE ;
 int nouveau_mm_fini (TYPE_2__*) ;
 int nouveau_mm_free (int *,scalar_t__*) ;
 int nouveau_object_destroy (int *) ;
 TYPE_1__* nv_gpuobj (int ) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

void
nouveau_gpuobj_destroy(struct nouveau_gpuobj *gpuobj)
{
 int i;

 if (gpuobj->flags & NVOBJ_FLAG_ZERO_FREE) {
  for (i = 0; i < gpuobj->size; i += 4)
   nv_wo32(gpuobj, i, 0x00000000);
 }

 if (gpuobj->node) {
  nouveau_mm_free(&nv_gpuobj(gpuobj->parent)->heap,
    &gpuobj->node);
 }

 if (gpuobj->heap.block_size)
  nouveau_mm_fini(&gpuobj->heap);

 nouveau_object_destroy(&gpuobj->base);
}
