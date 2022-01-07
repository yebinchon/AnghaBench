
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 cyc2us(u32 cycles)
{







 cycles *= 286;
 return (cycles >> 10);
}
