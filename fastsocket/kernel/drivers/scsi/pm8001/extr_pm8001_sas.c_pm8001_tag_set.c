
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {void* tags; } ;


 int set_bit (int ,void*) ;

__attribute__((used)) static void pm8001_tag_set(struct pm8001_hba_info *pm8001_ha, u32 tag)
{
 void *bitmap = pm8001_ha->tags;
 set_bit(tag, bitmap);
}
