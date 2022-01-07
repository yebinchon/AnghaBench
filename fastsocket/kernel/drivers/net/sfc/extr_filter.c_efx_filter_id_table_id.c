
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef enum efx_filter_table_id { ____Placeholder_efx_filter_table_id } efx_filter_table_id ;


 unsigned int ARRAY_SIZE (int*) ;
 unsigned int EFX_FILTER_INDEX_WIDTH ;
 int EFX_FILTER_TABLE_COUNT ;
 int* efx_filter_range_table ;

__attribute__((used)) static inline enum efx_filter_table_id efx_filter_id_table_id(u32 id)
{
 unsigned int range = id >> EFX_FILTER_INDEX_WIDTH;

 if (range < ARRAY_SIZE(efx_filter_range_table))
  return efx_filter_range_table[range];
 else
  return EFX_FILTER_TABLE_COUNT;
}
