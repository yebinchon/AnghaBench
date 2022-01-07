
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vpd ;
typedef int u8 ;
struct vpd_params {int* port_type; int* eth_base; void** xauicfg; int sn; void* mem_timing; void* mdc; void* uclk; void* mclk; void* cclk; } ;
struct t3_vpd {int id_tag; int * na_data; int xaui1cfg_data; int xaui0cfg_data; int * port1_data; int * port0_data; int sn_data; int mt_data; int mdc_data; int uclk_data; int mclk_data; int cclk_data; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;
typedef int __le32 ;


 int SERNUM_LEN ;
 int VPD_BASE ;
 int hex_to_bin (int ) ;
 int memcpy (int ,int ,int ) ;
 void* simple_strtoul (int ,int *,int) ;
 int t3_seeprom_read (struct adapter*,int,int *) ;
 scalar_t__ uses_xaui (struct adapter*) ;

__attribute__((used)) static int get_vpd_params(struct adapter *adapter, struct vpd_params *p)
{
 int i, addr, ret;
 struct t3_vpd vpd;





 ret = t3_seeprom_read(adapter, VPD_BASE, (__le32 *)&vpd);
 if (ret)
  return ret;
 addr = vpd.id_tag == 0x82 ? VPD_BASE : 0;

 for (i = 0; i < sizeof(vpd); i += 4) {
  ret = t3_seeprom_read(adapter, addr + i,
          (__le32 *)((u8 *)&vpd + i));
  if (ret)
   return ret;
 }

 p->cclk = simple_strtoul(vpd.cclk_data, ((void*)0), 10);
 p->mclk = simple_strtoul(vpd.mclk_data, ((void*)0), 10);
 p->uclk = simple_strtoul(vpd.uclk_data, ((void*)0), 10);
 p->mdc = simple_strtoul(vpd.mdc_data, ((void*)0), 10);
 p->mem_timing = simple_strtoul(vpd.mt_data, ((void*)0), 10);
 memcpy(p->sn, vpd.sn_data, SERNUM_LEN);


 if (adapter->params.rev == 0 && !vpd.port0_data[0]) {
  p->port_type[0] = uses_xaui(adapter) ? 1 : 2;
  p->port_type[1] = uses_xaui(adapter) ? 6 : 2;
 } else {
  p->port_type[0] = hex_to_bin(vpd.port0_data[0]);
  p->port_type[1] = hex_to_bin(vpd.port1_data[0]);
  p->xauicfg[0] = simple_strtoul(vpd.xaui0cfg_data, ((void*)0), 16);
  p->xauicfg[1] = simple_strtoul(vpd.xaui1cfg_data, ((void*)0), 16);
 }

 for (i = 0; i < 6; i++)
  p->eth_base[i] = hex_to_bin(vpd.na_data[2 * i]) * 16 +
     hex_to_bin(vpd.na_data[2 * i + 1]);
 return 0;
}
