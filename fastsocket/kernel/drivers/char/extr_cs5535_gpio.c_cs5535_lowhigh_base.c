
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 cs5535_lowhigh_base(int reg)
{
 return (reg & 0x10) << 3;
}
