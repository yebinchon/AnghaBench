
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int intlog10 (int) ;

__attribute__((used)) static u32 calculate_snr(u32 mse, u32 c)
{
 if (mse == 0)
  return 0;

 mse = 2*intlog10(mse);
 if (mse > c) {



  return 0;
 }
 return 10*(c - mse);
}
