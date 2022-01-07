
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pm8001_hba_info {unsigned int tags_num; void* tags; } ;


 int SAS_QUEUE_FULL ;
 unsigned int find_first_zero_bit (void*,unsigned int) ;
 int pm8001_tag_set (struct pm8001_hba_info*,unsigned int) ;

inline int pm8001_tag_alloc(struct pm8001_hba_info *pm8001_ha, u32 *tag_out)
{
 unsigned int index, tag;
 void *bitmap = pm8001_ha->tags;

 index = find_first_zero_bit(bitmap, pm8001_ha->tags_num);
 tag = index;
 if (tag >= pm8001_ha->tags_num)
  return -SAS_QUEUE_FULL;
 pm8001_tag_set(pm8001_ha, tag);
 *tag_out = tag;
 return 0;
}
