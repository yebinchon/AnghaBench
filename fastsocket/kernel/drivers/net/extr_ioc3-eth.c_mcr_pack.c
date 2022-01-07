
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 mcr_pack(u32 pulse, u32 sample)
{
 return (pulse << 10) | (sample << 2);
}
