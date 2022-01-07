
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int dummy; } ;


 struct nouveau_instmem* nouveau_instmem (struct nouveau_object*) ;
 int nv_ro32 (struct nouveau_instmem*,int) ;

__attribute__((used)) static u16
nv04_graph_mthd_bind_class(struct nouveau_object *object, u32 *args, u32 size)
{
 struct nouveau_instmem *imem = nouveau_instmem(object);
 u32 inst = *(u32 *)args << 4;
 return nv_ro32(imem, inst);
}
