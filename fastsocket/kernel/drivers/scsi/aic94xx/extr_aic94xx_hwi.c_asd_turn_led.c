
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int dummy; } ;


 int ASD_MAX_PHYS ;
 int LEDPOL ;
 int LmCONTROL (int) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int ) ;

void asd_turn_led(struct asd_ha_struct *asd_ha, int phy_id, int op)
{
 if (phy_id < ASD_MAX_PHYS) {
  u32 v = asd_read_reg_dword(asd_ha, LmCONTROL(phy_id));
  if (op)
   v |= LEDPOL;
  else
   v &= ~LEDPOL;
  asd_write_reg_dword(asd_ha, LmCONTROL(phy_id), v);
 }
}
