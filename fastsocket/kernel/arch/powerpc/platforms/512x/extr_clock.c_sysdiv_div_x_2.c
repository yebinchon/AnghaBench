
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scfr2; } ;


 TYPE_1__* clockctl ;

__attribute__((used)) static unsigned long sysdiv_div_x_2(void)
{





 static int sysdiv_to_div_x_2[] = {
  4, 5, 6, 7,
  8, 9, 10, 14,
  12, 16, 18, 22,
  20, 24, 26, 30,
  28, 32, 34, 38,
  36, 40, 42, 46,
  44, 48, 50, 54,
  52, 56, 58, 62,
  60, 64, 66,
 };
 int sysdiv = (clockctl->scfr2 >> 26) & 0x3f;
 return sysdiv_to_div_x_2[sysdiv];
}
