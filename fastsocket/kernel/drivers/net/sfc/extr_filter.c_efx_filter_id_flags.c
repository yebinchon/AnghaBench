
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;


 int EFX_FILTER_FLAG_RX ;
 int EFX_FILTER_FLAG_TX ;
 unsigned int EFX_FILTER_INDEX_WIDTH ;
 unsigned int EFX_FILTER_MATCH_PRI_COUNT ;

__attribute__((used)) static inline u8 efx_filter_id_flags(u32 id)
{
 unsigned int range = id >> EFX_FILTER_INDEX_WIDTH;

 if (range < EFX_FILTER_MATCH_PRI_COUNT)
  return EFX_FILTER_FLAG_RX;
 else
  return EFX_FILTER_FLAG_TX;
}
