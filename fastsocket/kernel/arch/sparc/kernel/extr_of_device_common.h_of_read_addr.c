
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u64 of_read_addr(const u32 *cell, int size)
{
 u64 r = 0;
 while (size--)
  r = (r << 32) | *(cell++);
 return r;
}
