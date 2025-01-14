
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int events; } ;
struct nv10_gpio_priv {TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;


 int nouveau_event_trigger (int ,int) ;
 int nv_rd32 (struct nv10_gpio_priv*,int) ;
 int nv_wr32 (struct nv10_gpio_priv*,int,int) ;

__attribute__((used)) static void
nv10_gpio_intr(struct nouveau_subdev *subdev)
{
 struct nv10_gpio_priv *priv = (void *)subdev;
 u32 intr = nv_rd32(priv, 0x001104);
 u32 hi = (intr & 0x0000ffff) >> 0;
 u32 lo = (intr & 0xffff0000) >> 16;
 int i;

 for (i = 0; (hi | lo) && i < 32; i++) {
  if ((hi | lo) & (1 << i))
   nouveau_event_trigger(priv->base.events, i);
 }

 nv_wr32(priv, 0x001104, intr);
}
