
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_timer_priv {int base; } ;
struct nouveau_subdev {int dummy; } ;


 int NV04_PTIMER_INTR_0 ;
 int nv04_timer_alarm_trigger (int *) ;
 int nv_error (struct nv04_timer_priv*,char*,int) ;
 int nv_rd32 (struct nv04_timer_priv*,int ) ;
 int nv_wr32 (struct nv04_timer_priv*,int ,int) ;

__attribute__((used)) static void
nv04_timer_intr(struct nouveau_subdev *subdev)
{
 struct nv04_timer_priv *priv = (void *)subdev;
 u32 stat = nv_rd32(priv, NV04_PTIMER_INTR_0);

 if (stat & 0x00000001) {
  nv04_timer_alarm_trigger(&priv->base);
  nv_wr32(priv, NV04_PTIMER_INTR_0, 0x00000001);
  stat &= ~0x00000001;
 }

 if (stat) {
  nv_error(priv, "unknown stat 0x%08x\n", stat);
  nv_wr32(priv, NV04_PTIMER_INTR_0, stat);
 }
}
