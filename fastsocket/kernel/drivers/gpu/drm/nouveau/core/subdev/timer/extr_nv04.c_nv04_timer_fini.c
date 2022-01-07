
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_timer_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int NV04_PTIMER_INTR_EN_0 ;
 int nouveau_timer_fini (int *,int) ;
 int nv_wr32 (struct nv04_timer_priv*,int ,int) ;

__attribute__((used)) static int
nv04_timer_fini(struct nouveau_object *object, bool suspend)
{
 struct nv04_timer_priv *priv = (void *)object;
 nv_wr32(priv, NV04_PTIMER_INTR_EN_0, 0x00000000);
 return nouveau_timer_fini(&priv->base, suspend);
}
