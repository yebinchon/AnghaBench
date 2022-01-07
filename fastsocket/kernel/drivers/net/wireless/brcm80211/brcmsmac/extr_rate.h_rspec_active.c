
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RSPEC_MIMORATE ;
 int RSPEC_RATE_MASK ;

__attribute__((used)) static inline bool rspec_active(u32 rspec)
{
 return rspec & (RSPEC_RATE_MASK | RSPEC_MIMORATE);
}
