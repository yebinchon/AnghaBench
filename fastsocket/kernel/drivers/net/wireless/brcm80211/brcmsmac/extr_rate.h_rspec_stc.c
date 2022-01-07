
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;


 int RSPEC_STC_MASK ;
 int RSPEC_STC_SHIFT ;

__attribute__((used)) static inline uint rspec_stc(u32 rspec)
{
 return (rspec & RSPEC_STC_MASK) >> RSPEC_STC_SHIFT;
}
