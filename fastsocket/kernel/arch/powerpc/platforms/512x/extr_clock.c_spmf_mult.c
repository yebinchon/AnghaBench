
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spmr; } ;


 TYPE_1__* clockctl ;

__attribute__((used)) static unsigned long spmf_mult(void)
{



 static int spmf_to_mult[] = {
  68, 1, 12, 16,
  20, 24, 28, 32,
  36, 40, 44, 48,
  52, 56, 60, 64
 };
 int spmf = (clockctl->spmr >> 24) & 0xf;
 return spmf_to_mult[spmf];
}
