
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvd0_gpio_priv {int dummy; } ;
struct nouveau_gpio {int (* set ) (struct nouveau_gpio*,int ,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ DCB_GPIO_UNUSED ;
 int dcb_gpio_entry (struct nouveau_bios*,int ,int,scalar_t__*,scalar_t__*) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_gpio*) ;
 int nv_mask (struct nvd0_gpio_priv*,int,int,scalar_t__) ;
 int nv_ro32 (struct nouveau_bios*,int ) ;
 int stub1 (struct nouveau_gpio*,int ,scalar_t__,scalar_t__,scalar_t__) ;

void
nvd0_gpio_reset(struct nouveau_gpio *gpio, u8 match)
{
 struct nouveau_bios *bios = nouveau_bios(gpio);
 struct nvd0_gpio_priv *priv = (void *)gpio;
 u8 ver, len;
 u16 entry;
 int ent = -1;

 while ((entry = dcb_gpio_entry(bios, 0, ++ent, &ver, &len))) {
  u32 data = nv_ro32(bios, entry);
  u8 line = (data & 0x0000003f);
  u8 defs = !!(data & 0x00000080);
  u8 func = (data & 0x0000ff00) >> 8;
  u8 unk0 = (data & 0x00ff0000) >> 16;
  u8 unk1 = (data & 0x1f000000) >> 24;

  if ( func == DCB_GPIO_UNUSED ||
      (match != DCB_GPIO_UNUSED && match != func))
   continue;

  gpio->set(gpio, 0, func, line, defs);

  nv_mask(priv, 0x00d610 + (line * 4), 0xff, unk0);
  if (unk1--)
   nv_mask(priv, 0x00d740 + (unk1 * 4), 0xff, line);
 }
}
