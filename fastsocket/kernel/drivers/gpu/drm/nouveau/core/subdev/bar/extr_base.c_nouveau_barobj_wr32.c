
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_barobj {scalar_t__ iomem; } ;


 int iowrite32_native (int ,scalar_t__) ;

__attribute__((used)) static void
nouveau_barobj_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 struct nouveau_barobj *barobj = (void *)object;
 iowrite32_native(data, barobj->iomem + addr);
}
