
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;


 void nv_wr32 (struct nouveau_object*,scalar_t__,int ) ;

__attribute__((used)) static void
nv04_instmem_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 return nv_wr32(object, 0x700000 + addr, data);
}
