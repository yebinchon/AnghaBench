
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 MXL_GetXtalInt(u32 Xtal_Freq)
{
 if ((Xtal_Freq % 1000000) == 0)
  return (Xtal_Freq / 10000);
 else
  return (((Xtal_Freq / 1000000) + 1)*100);
}
