
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int post; } ;
struct nv04_devinit_priv {TYPE_1__ base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_devinit_init (TYPE_1__*) ;
 int nv_info (struct nv04_devinit_priv*,char*) ;
 int nv_rdvgac (struct nv04_devinit_priv*,int ,int) ;

int
nv04_devinit_init(struct nouveau_object *object)
{
 struct nv04_devinit_priv *priv = (void *)object;

 if (!priv->base.post) {
  u32 htotal = nv_rdvgac(priv, 0, 0x06);
  htotal |= (nv_rdvgac(priv, 0, 0x07) & 0x01) << 8;
  htotal |= (nv_rdvgac(priv, 0, 0x07) & 0x20) << 4;
  htotal |= (nv_rdvgac(priv, 0, 0x25) & 0x01) << 10;
  htotal |= (nv_rdvgac(priv, 0, 0x41) & 0x01) << 11;
  if (!htotal) {
   nv_info(priv, "adaptor not initialised\n");
   priv->base.post = 1;
  }
 }

 return nouveau_devinit_init(&priv->base);
}
