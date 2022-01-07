
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_event {int priv; } ;


 int nv_mask (int ,int const,int const,int) ;
 int nv_wr32 (int ,int const,int const) ;

void
nv50_gpio_intr_disable(struct nouveau_event *event, int line)
{
 const u32 addr = line < 16 ? 0xe050 : 0xe070;
 const u32 mask = 0x00010001 << (line & 0xf);
 nv_wr32(event->priv, addr + 0x04, mask);
 nv_mask(event->priv, addr + 0x00, mask, 0x00000000);
}
