
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static inline int
ffsll(u64 mask)
{
 int i;
 for (i = 0; i < 64; i++) {
  if (mask & (1ULL << i))
   return i + 1;
 }
 return 0;
}
