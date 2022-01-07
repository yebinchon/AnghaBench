
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BIT (int ) ;
 int RATE_MCS_ANT_POS ;

__attribute__((used)) static inline u32 iwl_ant_idx_to_flags(u8 ant_idx)
{
 return BIT(ant_idx) << RATE_MCS_ANT_POS;
}
