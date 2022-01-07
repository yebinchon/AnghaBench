
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RATE_MCS_ANT_A_MSK ;
 int RATE_MCS_ANT_B_MSK ;
 int RATE_MCS_ANT_C_MSK ;

__attribute__((used)) static inline int
il4965_get_il4965_num_of_ant_from_rate(u32 rate_n_flags)
{
 return !!(rate_n_flags & RATE_MCS_ANT_A_MSK) +
     !!(rate_n_flags & RATE_MCS_ANT_B_MSK) +
     !!(rate_n_flags & RATE_MCS_ANT_C_MSK);
}
