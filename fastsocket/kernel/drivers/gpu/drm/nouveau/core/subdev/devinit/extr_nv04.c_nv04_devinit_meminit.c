
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv04_devinit_priv {int dummy; } ;
struct nouveau_devinit {int dummy; } ;
struct io_mapping {int dummy; } ;
struct TYPE_2__ {int pdev; } ;


 int NV04_PFB_BOOT_0 ;
 int NV04_PFB_BOOT_0_RAM_AMOUNT ;
 int NV04_PFB_BOOT_0_RAM_AMOUNT_16MB ;
 int NV04_PFB_BOOT_0_RAM_AMOUNT_4MB ;
 int NV04_PFB_BOOT_0_RAM_AMOUNT_8MB ;
 int NV04_PFB_BOOT_0_RAM_TYPE ;
 int NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT ;
 int NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT ;
 int NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT ;
 int NV04_PFB_BOOT_0_RAM_WIDTH_128 ;
 int NV04_PFB_DEBUG_0 ;
 int NV04_PFB_DEBUG_0_REFRESH_OFF ;
 int fbmem_fini (struct io_mapping*) ;
 struct io_mapping* fbmem_init (int ) ;
 int fbmem_peek (struct io_mapping*,int) ;
 int fbmem_poke (struct io_mapping*,int,int) ;
 scalar_t__ fbmem_readback (struct io_mapping*,int,int) ;
 TYPE_1__* nv_device (struct nv04_devinit_priv*) ;
 int nv_error (struct nv04_devinit_priv*,char*) ;
 int nv_mask (struct nv04_devinit_priv*,int ,int,int) ;
 int nv_rdvgas (struct nv04_devinit_priv*,int ,int) ;
 int nv_wrvgas (struct nv04_devinit_priv*,int ,int,int) ;

__attribute__((used)) static void
nv04_devinit_meminit(struct nouveau_devinit *devinit)
{
 struct nv04_devinit_priv *priv = (void *)devinit;
 u32 patt = 0xdeadbeef;
 struct io_mapping *fb;
 int i;


 fb = fbmem_init(nv_device(priv)->pdev);
 if (!fb) {
  nv_error(priv, "failed to map fb\n");
  return;
 }


 nv_wrvgas(priv, 0, 1, nv_rdvgas(priv, 0, 1) | 0x20);
 nv_mask(priv, NV04_PFB_DEBUG_0, 0, NV04_PFB_DEBUG_0_REFRESH_OFF);

 nv_mask(priv, NV04_PFB_BOOT_0, ~0,
        NV04_PFB_BOOT_0_RAM_AMOUNT_16MB |
        NV04_PFB_BOOT_0_RAM_WIDTH_128 |
        NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_16MBIT);

 for (i = 0; i < 4; i++)
  fbmem_poke(fb, 4 * i, patt);

 fbmem_poke(fb, 0x400000, patt + 1);

 if (fbmem_peek(fb, 0) == patt + 1) {
  nv_mask(priv, NV04_PFB_BOOT_0,
         NV04_PFB_BOOT_0_RAM_TYPE,
         NV04_PFB_BOOT_0_RAM_TYPE_SDRAM_16MBIT);
  nv_mask(priv, NV04_PFB_DEBUG_0,
         NV04_PFB_DEBUG_0_REFRESH_OFF, 0);

  for (i = 0; i < 4; i++)
   fbmem_poke(fb, 4 * i, patt);

  if ((fbmem_peek(fb, 0xc) & 0xffff) != (patt & 0xffff))
   nv_mask(priv, NV04_PFB_BOOT_0,
          NV04_PFB_BOOT_0_RAM_WIDTH_128 |
          NV04_PFB_BOOT_0_RAM_AMOUNT,
          NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);
 } else
 if ((fbmem_peek(fb, 0xc) & 0xffff0000) != (patt & 0xffff0000)) {
  nv_mask(priv, NV04_PFB_BOOT_0,
         NV04_PFB_BOOT_0_RAM_WIDTH_128 |
         NV04_PFB_BOOT_0_RAM_AMOUNT,
         NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);
 } else
 if (fbmem_peek(fb, 0) != patt) {
  if (fbmem_readback(fb, 0x800000, patt))
   nv_mask(priv, NV04_PFB_BOOT_0,
          NV04_PFB_BOOT_0_RAM_AMOUNT,
          NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);
  else
   nv_mask(priv, NV04_PFB_BOOT_0,
          NV04_PFB_BOOT_0_RAM_AMOUNT,
          NV04_PFB_BOOT_0_RAM_AMOUNT_4MB);

  nv_mask(priv, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_TYPE,
         NV04_PFB_BOOT_0_RAM_TYPE_SGRAM_8MBIT);
 } else
 if (!fbmem_readback(fb, 0x800000, patt)) {
  nv_mask(priv, NV04_PFB_BOOT_0, NV04_PFB_BOOT_0_RAM_AMOUNT,
         NV04_PFB_BOOT_0_RAM_AMOUNT_8MB);

 }


 nv_mask(priv, NV04_PFB_DEBUG_0, NV04_PFB_DEBUG_0_REFRESH_OFF, 0);
 nv_wrvgas(priv, 0, 1, nv_rdvgas(priv, 0, 1) & ~0x20);
 fbmem_fini(fb);
}
