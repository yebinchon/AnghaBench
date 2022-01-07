
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;


 int nv_rd32 (struct nouveau_object*,scalar_t__) ;

__attribute__((used)) static u32
nv04_instmem_rd32(struct nouveau_object *object, u64 addr)
{
 return nv_rd32(object, 0x700000 + addr);
}
