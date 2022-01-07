
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nouveau_object {int engine; } ;


 int nv_wr32 (int ,int ,int ) ;

__attribute__((used)) static void
nouveau_devobj_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 nv_wr32(object->engine, addr, data);
}
