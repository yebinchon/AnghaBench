
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int dummy; } ;


 int ASD_MAX_PHYS ;
 int GPIOCNFGR ;
 int GPIOOER ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;

void asd_control_led(struct asd_ha_struct *asd_ha, int phy_id, int op)
{
 if (phy_id < ASD_MAX_PHYS) {
  u32 v;

  v = asd_read_reg_dword(asd_ha, GPIOOER);
  if (op)
   v |= (1 << phy_id);
  else
   v &= ~(1 << phy_id);
  asd_write_reg_dword(asd_ha, GPIOOER, v);

  v = asd_read_reg_dword(asd_ha, GPIOCNFGR);
  if (op)
   v |= (1 << phy_id);
  else
   v &= ~(1 << phy_id);
  asd_write_reg_dword(asd_ha, GPIOCNFGR, v);
 }
}
