
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nouveau_object {int engine; } ;


 int nv_wr08 (int ,int ,int ) ;

__attribute__((used)) static void
nouveau_devobj_wr08(struct nouveau_object *object, u64 addr, u8 data)
{
 nv_wr08(object->engine, addr, data);
}
