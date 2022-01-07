
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 i5100_nrecmema_rank(u32 a)
{
 return a >> 8 & ((1 << 3) - 1);
}
