
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline u64 rsvd_bits(int s, int e)
{
 return ((1ULL << (e - s + 1)) - 1) << s;
}
