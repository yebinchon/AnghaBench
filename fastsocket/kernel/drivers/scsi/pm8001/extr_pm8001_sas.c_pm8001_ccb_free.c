
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int pm8001_tag_clear (struct pm8001_hba_info*,int ) ;

void pm8001_ccb_free(struct pm8001_hba_info *pm8001_ha, u32 ccb_idx)
{
 pm8001_tag_clear(pm8001_ha, ccb_idx);
}
