
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nv20_devinit_priv {int dummy; } ;
struct nouveau_devinit {int dummy; } ;
struct nouveau_device {int chipset; int pdev; } ;
struct io_mapping {int dummy; } ;


 int NV04_PFB_CFG0 ;
 int NV10_PFB_REFCTRL ;
 int NV10_PFB_REFCTRL_VALID_1 ;
 int fbmem_fini (struct io_mapping*) ;
 struct io_mapping* fbmem_init (int ) ;
 int fbmem_peek (struct io_mapping*,int) ;
 int fbmem_poke (struct io_mapping*,int,int) ;
 struct nouveau_device* nv_device (struct nv20_devinit_priv*) ;
 int nv_error (struct nv20_devinit_priv*,char*) ;
 int nv_mask (struct nv20_devinit_priv*,int ,int,int) ;
 int nv_rd32 (struct nv20_devinit_priv*,int) ;
 int nv_wr32 (struct nv20_devinit_priv*,int ,int ) ;

__attribute__((used)) static void
nv20_devinit_meminit(struct nouveau_devinit *devinit)
{
 struct nv20_devinit_priv *priv = (void *)devinit;
 struct nouveau_device *device = nv_device(priv);
 uint32_t mask = (device->chipset >= 0x25 ? 0x300 : 0x900);
 uint32_t amount, off;
 struct io_mapping *fb;


 fb = fbmem_init(nv_device(priv)->pdev);
 if (!fb) {
  nv_error(priv, "failed to map fb\n");
  return;
 }

 nv_wr32(priv, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);


 nv_mask(priv, NV04_PFB_CFG0, 0, mask);

 amount = nv_rd32(priv, 0x10020c);
 for (off = amount; off > 0x2000000; off -= 0x2000000)
  fbmem_poke(fb, off - 4, off);

 amount = nv_rd32(priv, 0x10020c);
 if (amount != fbmem_peek(fb, amount - 4))

  nv_mask(priv, NV04_PFB_CFG0, mask, 0);

 fbmem_fini(fb);
}
