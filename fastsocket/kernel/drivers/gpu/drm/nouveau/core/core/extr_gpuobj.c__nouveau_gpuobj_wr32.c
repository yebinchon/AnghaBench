
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_ofuncs {int (* wr32 ) (int ,int ,int ) ;} ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int parent; TYPE_1__* node; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 struct nouveau_gpuobj* nv_gpuobj (struct nouveau_object*) ;
 struct nouveau_ofuncs* nv_ofuncs (int ) ;
 int stub1 (int ,int ,int ) ;

void
_nouveau_gpuobj_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 struct nouveau_gpuobj *gpuobj = nv_gpuobj(object);
 struct nouveau_ofuncs *pfuncs = nv_ofuncs(gpuobj->parent);
 if (gpuobj->node)
  addr += gpuobj->node->offset;
 pfuncs->wr32(gpuobj->parent, addr, data);
}
