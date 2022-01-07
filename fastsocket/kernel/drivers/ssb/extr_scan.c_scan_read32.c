
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ssb_bus {int bustype; int mmio; } ;






 int SSB_CORE_SIZE ;
 int readl (int) ;
 int readw (int) ;
 int ssb_pcmcia_switch_segment (struct ssb_bus*,int) ;
 int ssb_sdio_scan_read32 (struct ssb_bus*,int) ;

__attribute__((used)) static u32 scan_read32(struct ssb_bus *bus, u8 current_coreidx,
         u16 offset)
{
 u32 lo, hi;

 switch (bus->bustype) {
 case 128:
  offset += current_coreidx * SSB_CORE_SIZE;
  break;
 case 131:
  break;
 case 130:
  if (offset >= 0x800) {
   ssb_pcmcia_switch_segment(bus, 1);
   offset -= 0x800;
  } else
   ssb_pcmcia_switch_segment(bus, 0);
  lo = readw(bus->mmio + offset);
  hi = readw(bus->mmio + offset + 2);
  return lo | (hi << 16);
 case 129:
  offset += current_coreidx * SSB_CORE_SIZE;
  return ssb_sdio_scan_read32(bus, offset);
 }
 return readl(bus->mmio + offset);
}
