
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int dummy; } ;


 int nv04_graph_set_ctx1 (struct nouveau_object*,int,int) ;
 int nv04_graph_set_ctx_val (struct nouveau_object*,int ,int ) ;
 int nv_ro32 (struct nouveau_object*,int ) ;

__attribute__((used)) static int
nv04_graph_mthd_set_operation(struct nouveau_object *object, u32 mthd,
         void *args, u32 size)
{
 u32 class = nv_ro32(object, 0) & 0xff;
 u32 data = *(u32 *)args;
 if (data > 5)
  return 1;

 if (data > 2 && class < 0x40)
  return 1;
 nv04_graph_set_ctx1(object, 0x00038000, data << 15);

 nv04_graph_set_ctx_val(object, 0, 0);
 return 0;
}
