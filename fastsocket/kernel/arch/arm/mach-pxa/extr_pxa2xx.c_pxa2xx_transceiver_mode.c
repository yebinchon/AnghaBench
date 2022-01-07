
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int BUG () ;
 int IR_FIRMODE ;
 int IR_OFF ;
 int IR_SIRMODE ;
 int pxa2xx_mfp_config (int ,int ) ;
 int pxa2xx_mfp_fir ;
 int pxa2xx_mfp_off ;
 int pxa2xx_mfp_sir ;

void pxa2xx_transceiver_mode(struct device *dev, int mode)
{
 if (mode & IR_OFF) {
  pxa2xx_mfp_config(pxa2xx_mfp_off, ARRAY_SIZE(pxa2xx_mfp_off));
 } else if (mode & IR_SIRMODE) {
  pxa2xx_mfp_config(pxa2xx_mfp_sir, ARRAY_SIZE(pxa2xx_mfp_sir));
 } else if (mode & IR_FIRMODE) {
  pxa2xx_mfp_config(pxa2xx_mfp_fir, ARRAY_SIZE(pxa2xx_mfp_fir));
 } else
  BUG();
}
