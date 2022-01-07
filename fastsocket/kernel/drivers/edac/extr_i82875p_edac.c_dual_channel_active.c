
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int dual_channel_active(u32 drc)
{
 return (drc >> 21) & 0x1;
}
