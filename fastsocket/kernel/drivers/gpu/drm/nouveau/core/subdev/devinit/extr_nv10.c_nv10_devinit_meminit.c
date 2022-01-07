
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nv10_devinit_priv {int dummy; } ;
struct nouveau_devinit {int dummy; } ;
struct io_mapping {int dummy; } ;
struct TYPE_2__ {int chipset; int pdev; } ;


 int NV04_PFB_CFG0 ;
 int NV10_PFB_REFCTRL ;
 int NV10_PFB_REFCTRL_VALID_1 ;
 int fbmem_fini (struct io_mapping*) ;
 struct io_mapping* fbmem_init (int ) ;
 int fbmem_peek (struct io_mapping*,int) ;
 int fbmem_poke (struct io_mapping*,int,int) ;
 TYPE_1__* nv_device (struct nv10_devinit_priv*) ;
 int nv_error (struct nv10_devinit_priv*,char*) ;
 int nv_mask (struct nv10_devinit_priv*,int ,int,int const) ;
 int nv_rd32 (struct nv10_devinit_priv*,int) ;
 int nv_wr32 (struct nv10_devinit_priv*,int ,int ) ;

__attribute__((used)) static void
nv10_devinit_meminit(struct nouveau_devinit *devinit)
{
 struct nv10_devinit_priv *priv = (void *)devinit;
 const int mem_width[] = { 0x10, 0x00, 0x20 };
 const int mem_width_count = nv_device(priv)->chipset >= 0x17 ? 3 : 2;
 uint32_t patt = 0xdeadbeef;
 struct io_mapping *fb;
 int i, j, k;


 fb = fbmem_init(nv_device(priv)->pdev);
 if (!fb) {
  nv_error(priv, "failed to map fb\n");
  return;
 }

 nv_wr32(priv, NV10_PFB_REFCTRL, NV10_PFB_REFCTRL_VALID_1);


 for (i = 0; i < mem_width_count; i++) {
  nv_mask(priv, NV04_PFB_CFG0, 0x30, mem_width[i]);

  for (j = 0; j < 4; j++) {
   for (k = 0; k < 4; k++)
    fbmem_poke(fb, 0x1c, 0);

   fbmem_poke(fb, 0x1c, patt);
   fbmem_poke(fb, 0x3c, 0);

   if (fbmem_peek(fb, 0x1c) == patt)
    goto mem_width_found;
  }
 }

mem_width_found:
 patt <<= 1;


 for (i = 0; i < 4; i++) {
  int off = nv_rd32(priv, 0x10020c) - 0x100000;

  fbmem_poke(fb, off, patt);
  fbmem_poke(fb, 0, 0);

  fbmem_peek(fb, 0);
  fbmem_peek(fb, 0);
  fbmem_peek(fb, 0);
  fbmem_peek(fb, 0);

  if (fbmem_peek(fb, off) == patt)
   goto amount_found;
 }


 nv_mask(priv, NV04_PFB_CFG0, 0x1000, 0);

amount_found:
 fbmem_fini(fb);
}
