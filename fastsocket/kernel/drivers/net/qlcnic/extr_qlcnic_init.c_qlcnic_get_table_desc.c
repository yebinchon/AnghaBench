
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct uni_table_desc {int entry_size; int findex; int num_entries; } ;
typedef int __le32 ;


 size_t le32_to_cpu (int ) ;

__attribute__((used)) static
struct uni_table_desc *qlcnic_get_table_desc(const u8 *unirom, int section)
{
 u32 i, entries;
 struct uni_table_desc *directory = (struct uni_table_desc *) &unirom[0];
 entries = le32_to_cpu(directory->num_entries);

 for (i = 0; i < entries; i++) {

  u32 offs = le32_to_cpu(directory->findex) +
      i * le32_to_cpu(directory->entry_size);
  u32 tab_type = le32_to_cpu(*((__le32 *)&unirom[offs] + 8));

  if (tab_type == section)
   return (struct uni_table_desc *) &unirom[offs];
 }

 return ((void*)0);
}
