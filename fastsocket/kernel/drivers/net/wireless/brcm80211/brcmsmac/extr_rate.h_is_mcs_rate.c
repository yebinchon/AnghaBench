
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RSPEC_MIMORATE ;

__attribute__((used)) static inline bool is_mcs_rate(u32 ratespec)
{
 return (ratespec & RSPEC_MIMORATE) != 0;
}
