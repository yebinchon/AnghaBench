
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nouveau_object {int engine; } ;


 int nv_rd08 (int ,int ) ;

__attribute__((used)) static u8
nouveau_devobj_rd08(struct nouveau_object *object, u64 addr)
{
 return nv_rd08(object->engine, addr);
}
