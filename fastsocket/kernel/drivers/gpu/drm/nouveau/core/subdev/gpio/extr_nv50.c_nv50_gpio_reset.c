
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nv50_gpio_priv {int dummy; } ;
struct nouveau_gpio {int (* set ) (struct nouveau_gpio*,int ,int,int,int) ;} ;
struct nouveau_bios {int dummy; } ;


 int DCB_GPIO_UNUSED ;
 int dcb_gpio_entry (struct nouveau_bios*,int ,int,int*,int*) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_gpio*) ;
 int nv_mask (struct nv50_gpio_priv*,int,int,int) ;
 int nv_ro32 (struct nouveau_bios*,int ) ;
 int stub1 (struct nouveau_gpio*,int ,int,int,int) ;

__attribute__((used)) static void
nv50_gpio_reset(struct nouveau_gpio *gpio, u8 match)
{
 struct nouveau_bios *bios = nouveau_bios(gpio);
 struct nv50_gpio_priv *priv = (void *)gpio;
 u8 ver, len;
 u16 entry;
 int ent = -1;

 while ((entry = dcb_gpio_entry(bios, 0, ++ent, &ver, &len))) {
  static const u32 regs[] = { 0xe100, 0xe28c };
  u32 data = nv_ro32(bios, entry);
  u8 line = (data & 0x0000001f);
  u8 func = (data & 0x0000ff00) >> 8;
  u8 defs = !!(data & 0x01000000);
  u8 unk0 = !!(data & 0x02000000);
  u8 unk1 = !!(data & 0x04000000);
  u32 val = (unk1 << 16) | unk0;
  u32 reg = regs[line >> 4]; line &= 0x0f;

  if ( func == DCB_GPIO_UNUSED ||
      (match != DCB_GPIO_UNUSED && match != func))
   continue;

  gpio->set(gpio, 0, func, line, defs);

  nv_mask(priv, reg, 0x00010001 << line, val << line);
 }
}
