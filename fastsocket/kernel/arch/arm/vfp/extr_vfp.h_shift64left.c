
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline void shift64left(u64 *resh, u64 *resl, u64 n)
{
 *resh = n >> 63;
 *resl = n << 1;
}
