
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef int GPSR ;
typedef int GPCR ;


 int CORGI_GPIO_CHRG_ON ;
 int CORGI_GPIO_CHRG_UKN ;
 int GPIO_bit (int ) ;
 int SHARPSL_SUSPENDED ;
 scalar_t__ machine_is_corgi () ;
 TYPE_1__ sharpsl_pm ;

__attribute__((used)) static void corgi_charge(int on)
{
 if (on) {
  if (machine_is_corgi() && (sharpsl_pm.flags & SHARPSL_SUSPENDED)) {
   GPCR(CORGI_GPIO_CHRG_ON) = GPIO_bit(CORGI_GPIO_CHRG_ON);
   GPSR(CORGI_GPIO_CHRG_UKN) = GPIO_bit(CORGI_GPIO_CHRG_UKN);
  } else {
   GPSR(CORGI_GPIO_CHRG_ON) = GPIO_bit(CORGI_GPIO_CHRG_ON);
   GPCR(CORGI_GPIO_CHRG_UKN) = GPIO_bit(CORGI_GPIO_CHRG_UKN);
  }
 } else {
  GPCR(CORGI_GPIO_CHRG_ON) = GPIO_bit(CORGI_GPIO_CHRG_ON);
  GPCR(CORGI_GPIO_CHRG_UKN) = GPIO_bit(CORGI_GPIO_CHRG_UKN);
 }
}
