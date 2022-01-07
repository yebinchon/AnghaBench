
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int CSR_EEPROM_GP ;


 int CSR_EEPROM_GP_VALID_MSK ;
 int D_EEPROM (char*,int) ;
 int ENOENT ;
 int IL_ERR (char*,int) ;
 int _il_rd (struct il_priv*,int ) ;

__attribute__((used)) static int
il_eeprom_verify_signature(struct il_priv *il)
{
 u32 gp = _il_rd(il, CSR_EEPROM_GP) & CSR_EEPROM_GP_VALID_MSK;
 int ret = 0;

 D_EEPROM("EEPROM signature=0x%08x\n", gp);
 switch (gp) {
 case 129:
 case 128:
  break;
 default:
  IL_ERR("bad EEPROM signature," "EEPROM_GP=0x%08x\n", gp);
  ret = -ENOENT;
  break;
 }
 return ret;
}
