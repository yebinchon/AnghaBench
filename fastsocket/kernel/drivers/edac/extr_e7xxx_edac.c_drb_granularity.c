
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int E7501 ;

__attribute__((used)) static inline int drb_granularity(u32 drc, int dev_idx)
{

 return (dev_idx == E7501) ? ((drc >> 18) & 0x3) : 1;
}
