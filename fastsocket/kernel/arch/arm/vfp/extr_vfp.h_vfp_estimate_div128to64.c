
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef scalar_t__ s64 ;


 int add128 (unsigned long long*,unsigned long long*,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int do_div (unsigned long long,unsigned long long) ;
 int mul64to128 (unsigned long long*,unsigned long long*,unsigned long long,unsigned long long) ;
 int sub128 (unsigned long long*,unsigned long long*,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static inline u64 vfp_estimate_div128to64(u64 nh, u64 nl, u64 m)
{
 u64 mh, ml, remh, reml, termh, terml, z;

 if (nh >= m)
  return ~0ULL;
 mh = m >> 32;
 if (mh << 32 <= nh) {
  z = 0xffffffff00000000ULL;
 } else {
  z = nh;
  do_div(z, mh);
  z <<= 32;
 }
 mul64to128(&termh, &terml, m, z);
 sub128(&remh, &reml, nh, nl, termh, terml);
 ml = m << 32;
 while ((s64)remh < 0) {
  z -= 0x100000000ULL;
  add128(&remh, &reml, remh, reml, mh, ml);
 }
 remh = (remh << 32) | (reml >> 32);
 if (mh << 32 <= remh) {
  z |= 0xffffffff;
 } else {
  do_div(remh, mh);
  z |= remh;
 }
 return z;
}
