
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int dummy; } ;


 int nv04_graph_set_ctx1 (struct nouveau_object*,int,int) ;
 int nv_ro32 (struct nouveau_object*,int) ;
 int nv_wo32 (struct nouveau_object*,int,int) ;

__attribute__((used)) static void
nv04_graph_set_ctx_val(struct nouveau_object *object, u32 mask, u32 value)
{
 int class, op, valid = 1;
 u32 tmp, ctx1;

 ctx1 = nv_ro32(object, 0x00);
 class = ctx1 & 0xff;
 op = (ctx1 >> 15) & 7;

 tmp = nv_ro32(object, 0x0c);
 tmp &= ~mask;
 tmp |= value;
 nv_wo32(object, 0x0c, tmp);


 if (!(tmp & 0x02000000))
  valid = 0;

 if ((class == 0x1f || class == 0x48) && !(tmp & 0x04000000))
  valid = 0;

 switch (op) {

 case 0:
 case 3:
  break;

 case 1:
  if (!(tmp & 0x18000000))
   valid = 0;
  break;

 case 2:
  if (!(tmp & 0x20000000))
   valid = 0;
  break;

 case 4:
 case 5:
  if (!(tmp & 0x40000000))
   valid = 0;
  break;
 }

 nv04_graph_set_ctx1(object, 0x01000000, valid << 24);
}
