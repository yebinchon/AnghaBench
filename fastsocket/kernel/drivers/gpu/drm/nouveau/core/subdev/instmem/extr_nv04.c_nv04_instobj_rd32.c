
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nv04_instobj_priv {TYPE_1__* mem; } ;
struct nouveau_object {int engine; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 int nv_ro32 (int ,scalar_t__) ;

__attribute__((used)) static u32
nv04_instobj_rd32(struct nouveau_object *object, u64 addr)
{
 struct nv04_instobj_priv *node = (void *)object;
 return nv_ro32(object->engine, node->mem->offset + addr);
}
