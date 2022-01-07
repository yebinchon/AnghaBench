
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int MSGU_SCRATCH_PAD_0 ;
 int MSGU_SCRATCH_PAD_1 ;
 int MSGU_SCRATCH_PAD_2 ;
 int MSGU_SCRATCH_PAD_3 ;
 int SCRATCH_PAD1_ERR ;
 int SCRATCH_PAD1_RDY ;
 int SCRATCH_PAD1_STATE_MASK ;
 int SCRATCH_PAD2_ERR ;
 int SCRATCH_PAD2_RDY ;
 int SCRATCH_PAD2_STATE_MASK ;
 int SCRATCH_PAD_STATE_MASK ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int check_fw_ready(struct pm8001_hba_info *pm8001_ha)
{
 u32 value, value1;
 u32 max_wait_count;

 value = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1);
 value1 = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2);

 if (SCRATCH_PAD1_ERR == (value & SCRATCH_PAD_STATE_MASK)) {

  value = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_0);
  return -1;
 }


 if (SCRATCH_PAD2_ERR == (value1 & SCRATCH_PAD_STATE_MASK)) {

  value1 = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_3);
  return -1;
 }



 if (value & SCRATCH_PAD1_STATE_MASK) {

  pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_0);
  return -1;
 }



 if (value1 & SCRATCH_PAD2_STATE_MASK) {

  return -1;
 }

 max_wait_count = 1 * 1000 * 1000;


 do {
  udelay(1);
  value = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1)
   & SCRATCH_PAD1_RDY;
  value1 = pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_2)
   & SCRATCH_PAD2_RDY;
  if ((--max_wait_count) == 0)
   return -1;
 } while ((value != SCRATCH_PAD1_RDY) || (value1 != SCRATCH_PAD2_RDY));
 return 0;
}
