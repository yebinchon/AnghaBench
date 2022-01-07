
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asd_phy_desc {int max_sas_lrate; int min_sas_lrate; int max_sata_lrate; int min_sata_lrate; } ;





 int SAS_SPEED_15_DIS ;
 int SAS_SPEED_30_DIS ;
 int SAS_SPEED_60_DIS ;
 int SATA_SPEED_15_DIS ;
 int SATA_SPEED_30_DIS ;

__attribute__((used)) static void set_speed_mask(u8 *speed_mask, struct asd_phy_desc *pd)
{

 *speed_mask = SAS_SPEED_60_DIS | SAS_SPEED_30_DIS | SAS_SPEED_15_DIS
  | SATA_SPEED_30_DIS | SATA_SPEED_15_DIS;

 switch (pd->max_sas_lrate) {
 case 128:
  *speed_mask &= ~SAS_SPEED_60_DIS;
 default:
 case 129:
  *speed_mask &= ~SAS_SPEED_30_DIS;
 case 130:
  *speed_mask &= ~SAS_SPEED_15_DIS;
 }

 switch (pd->min_sas_lrate) {
 case 128:
  *speed_mask |= SAS_SPEED_30_DIS;
 case 129:
  *speed_mask |= SAS_SPEED_15_DIS;
 default:
 case 130:

  ;
 }

 switch (pd->max_sata_lrate) {
 case 129:
  *speed_mask &= ~SATA_SPEED_30_DIS;
 default:
 case 130:
  *speed_mask &= ~SATA_SPEED_15_DIS;
 }

 switch (pd->min_sata_lrate) {
 case 129:
  *speed_mask |= SATA_SPEED_15_DIS;
 default:
 case 130:

  ;
 }
}
