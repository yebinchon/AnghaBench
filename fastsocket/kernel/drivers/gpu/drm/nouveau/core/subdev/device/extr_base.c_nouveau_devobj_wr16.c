
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct nouveau_object {int engine; } ;


 int nv_wr16 (int ,int ,int ) ;

__attribute__((used)) static void
nouveau_devobj_wr16(struct nouveau_object *object, u64 addr, u16 data)
{
 nv_wr16(object->engine, addr, data);
}
