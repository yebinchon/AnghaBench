
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ div_u64 (scalar_t__,int) ;

__attribute__((used)) static u64 div_round64(u64 dividend, u32 divisor)
{
 return div_u64(dividend + (divisor / 2), divisor);
}
