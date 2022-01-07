
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;



u16 qm_mulu16(u16 op1, u16 op2)
{
 return (u16) (((u32) op1 * (u32) op2) >> 16);
}
