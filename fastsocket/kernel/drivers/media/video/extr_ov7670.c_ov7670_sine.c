
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIN_STEP ;
 int* ov7670_sin_table ;

__attribute__((used)) static int ov7670_sine(int theta)
{
 int chs = 1;
 int sine;

 if (theta < 0) {
  theta = -theta;
  chs = -1;
 }
 if (theta <= 90)
  sine = ov7670_sin_table[theta/SIN_STEP];
 else {
  theta -= 90;
  sine = 1000 - ov7670_sin_table[theta/SIN_STEP];
 }
 return sine*chs;
}
