
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hfc4s8s_hw ;


 int Read_hfc16 (int *,int) ;

__attribute__((used)) static int
Read_hfc16_stable(hfc4s8s_hw * hw, int reg)
{
 int ref16;
 int in16;

 ref16 = Read_hfc16(hw, reg);
 while (((in16 = Read_hfc16(hw, reg)) != ref16)) {
  ref16 = in16;
 }
 return in16;
}
