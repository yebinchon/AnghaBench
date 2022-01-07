
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_barobj {scalar_t__ iomem; } ;


 int ioread32_native (scalar_t__) ;

__attribute__((used)) static u32
nouveau_barobj_rd32(struct nouveau_object *object, u64 addr)
{
 struct nouveau_barobj *barobj = (void *)object;
 return ioread32_native(barobj->iomem + addr);
}
