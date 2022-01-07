
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ESCD_FUNCTION_NOT_SUPPORTED ;
 int PNP_DS ;
 int PNP_READ_ESCD ;
 int PNP_TS1 ;
 int PNP_TS2 ;
 int __va (int ) ;
 int call_pnp_bios (int ,int ,int ,int ,int ,int ,int ,int ,char*,int,int ,int) ;
 int pnp_bios_present () ;

__attribute__((used)) static int __pnp_bios_read_escd(char *data, u32 nvram_base)
{
 u16 status;

 if (!pnp_bios_present())
  return ESCD_FUNCTION_NOT_SUPPORTED;
 status = call_pnp_bios(PNP_READ_ESCD, 0, PNP_TS1, PNP_TS2, PNP_DS, 0, 0,
          0, data, 65536, __va(nvram_base), 65536);
 return status;
}
