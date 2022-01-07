
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct nouveau_object {int engine; } ;


 int nv_rd16 (int ,int ) ;

__attribute__((used)) static u16
nouveau_devobj_rd16(struct nouveau_object *object, u64 addr)
{
 return nv_rd16(object->engine, addr);
}
