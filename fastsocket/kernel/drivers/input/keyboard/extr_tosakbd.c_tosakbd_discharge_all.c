
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPCR1 ;
 int GPCR2 ;
 int GPDR1 ;
 int GPDR2 ;
 int TOSA_GPIO_HIGH_STROBE_BIT ;
 int TOSA_GPIO_LOW_STROBE_BIT ;

__attribute__((used)) static inline void tosakbd_discharge_all(void)
{

 GPCR1 = TOSA_GPIO_HIGH_STROBE_BIT;
 GPDR1 &= ~TOSA_GPIO_HIGH_STROBE_BIT;
 GPCR2 = TOSA_GPIO_LOW_STROBE_BIT;
 GPDR2 &= ~TOSA_GPIO_LOW_STROBE_BIT;
}
