
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RSPEC_BW_MASK ;
 int RSPEC_BW_SHIFT ;

__attribute__((used)) static inline u32 rspec_get_bw(u32 rspec)
{
 return (rspec & RSPEC_BW_MASK) >> RSPEC_BW_SHIFT;
}
