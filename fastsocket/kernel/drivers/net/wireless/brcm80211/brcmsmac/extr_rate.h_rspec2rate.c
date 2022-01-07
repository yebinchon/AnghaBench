
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;


 int RSPEC_MIMORATE ;
 int RSPEC_RATE_MASK ;
 int mcs_2_rate (int,int ,int ) ;
 int rspec_is40mhz (int) ;
 int rspec_issgi (int) ;

__attribute__((used)) static inline uint rspec2rate(u32 rspec)
{
 if (rspec & RSPEC_MIMORATE)
  return mcs_2_rate(rspec & RSPEC_RATE_MASK, rspec_is40mhz(rspec),
      rspec_issgi(rspec));
 return rspec & RSPEC_RATE_MASK;
}
