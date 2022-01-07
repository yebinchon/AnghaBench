
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8001_hba_info {int tags_num; } ;


 int pm8001_tag_clear (struct pm8001_hba_info*,int) ;

void pm8001_tag_init(struct pm8001_hba_info *pm8001_ha)
{
 int i;
 for (i = 0; i < pm8001_ha->tags_num; ++i)
  pm8001_tag_clear(pm8001_ha, i);
}
