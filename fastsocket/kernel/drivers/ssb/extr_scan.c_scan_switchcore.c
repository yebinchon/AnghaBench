
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssb_bus {int bustype; } ;






 int ssb_pci_switch_coreidx (struct ssb_bus*,int ) ;
 int ssb_pcmcia_switch_coreidx (struct ssb_bus*,int ) ;
 int ssb_sdio_scan_switch_coreidx (struct ssb_bus*,int ) ;

__attribute__((used)) static int scan_switchcore(struct ssb_bus *bus, u8 coreidx)
{
 switch (bus->bustype) {
 case 128:
  break;
 case 131:
  return ssb_pci_switch_coreidx(bus, coreidx);
 case 130:
  return ssb_pcmcia_switch_coreidx(bus, coreidx);
 case 129:
  return ssb_sdio_scan_switch_coreidx(bus, coreidx);
 }
 return 0;
}
