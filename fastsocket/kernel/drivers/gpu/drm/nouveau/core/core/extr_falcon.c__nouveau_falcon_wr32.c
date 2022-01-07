
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_falcon {scalar_t__ addr; } ;


 int nv_wr32 (struct nouveau_falcon*,scalar_t__,int ) ;

void
_nouveau_falcon_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 struct nouveau_falcon *falcon = (void *)object;
 nv_wr32(falcon, falcon->addr + addr, data);
}
