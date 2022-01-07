
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_ramht {int bits; } ;
struct nouveau_object {struct nouveau_object* engine; } ;
struct TYPE_2__ {int size; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int log2i (int) ;
 int nouveau_gpuobj_create (struct nouveau_object*,struct nouveau_object*,int *,int ,struct nouveau_object*,int ,int ,int ,struct nouveau_ramht**) ;
 int nouveau_ramht_oclass ;
 TYPE_1__* nv_gpuobj (struct nouveau_ramht*) ;

int
nouveau_ramht_new(struct nouveau_object *parent, struct nouveau_object *pargpu,
    u32 size, u32 align, struct nouveau_ramht **pramht)
{
 struct nouveau_ramht *ramht;
 int ret;

 ret = nouveau_gpuobj_create(parent, parent->engine ?
        parent->engine : parent,
        &nouveau_ramht_oclass, 0, pargpu, size,
        align, NVOBJ_FLAG_ZERO_ALLOC, &ramht);
 *pramht = ramht;
 if (ret)
  return ret;

 ramht->bits = log2i(nv_gpuobj(ramht)->size >> 3);
 return 0;
}
