
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int hfc4s8s_hw ;


 scalar_t__ Read_hfc8 (int *,int) ;

__attribute__((used)) static u_char
Read_hfc8_stable(hfc4s8s_hw * hw, int reg)
{
 u_char ref8;
 u_char in8;
 ref8 = Read_hfc8(hw, reg);
 while (((in8 = Read_hfc8(hw, reg)) != ref8)) {
  ref8 = in8;
 }
 return in8;
}
