
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef enum qe_clock { ____Placeholder_qe_clock } qe_clock ;
struct TYPE_3__ {int * brgc; } ;
struct TYPE_4__ {TYPE_1__ brg; } ;


 int EINVAL ;
 int QE_BRG1 ;
 int QE_BRG16 ;
 int QE_BRGC_DIV16 ;
 int QE_BRGC_DIVISOR_MAX ;
 int QE_BRGC_DIVISOR_SHIFT ;
 int QE_BRGC_ENABLE ;
 int out_be32 (int *,int) ;
 unsigned int qe_get_brg_clk () ;
 TYPE_2__* qe_immr ;

int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier)
{
 u32 divisor, tempval;
 u32 div16 = 0;

 if ((brg < QE_BRG1) || (brg > QE_BRG16))
  return -EINVAL;

 divisor = qe_get_brg_clk() / (rate * multiplier);

 if (divisor > QE_BRGC_DIVISOR_MAX + 1) {
  div16 = QE_BRGC_DIV16;
  divisor /= 16;
 }




 if (!div16 && (divisor & 1))
  divisor++;

 tempval = ((divisor - 1) << QE_BRGC_DIVISOR_SHIFT) |
  QE_BRGC_ENABLE | div16;

 out_be32(&qe_immr->brg.brgc[brg - QE_BRG1], tempval);

 return 0;
}
