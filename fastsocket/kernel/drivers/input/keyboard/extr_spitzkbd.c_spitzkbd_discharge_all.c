
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPCR0 ;
 int GPCR1 ;
 int GPCR2 ;
 int GPCR3 ;
 int GPDR0 ;
 int GPDR1 ;
 int GPDR2 ;
 int GPDR3 ;
 int SPITZ_GPIO_G0_STROBE_BIT ;
 int SPITZ_GPIO_G1_STROBE_BIT ;
 int SPITZ_GPIO_G2_STROBE_BIT ;
 int SPITZ_GPIO_G3_STROBE_BIT ;

__attribute__((used)) static inline void spitzkbd_discharge_all(void)
{

 GPCR0 = SPITZ_GPIO_G0_STROBE_BIT;
 GPDR0 &= ~SPITZ_GPIO_G0_STROBE_BIT;
 GPCR1 = SPITZ_GPIO_G1_STROBE_BIT;
 GPDR1 &= ~SPITZ_GPIO_G1_STROBE_BIT;
 GPCR2 = SPITZ_GPIO_G2_STROBE_BIT;
 GPDR2 &= ~SPITZ_GPIO_G2_STROBE_BIT;
 GPCR3 = SPITZ_GPIO_G3_STROBE_BIT;
 GPDR3 &= ~SPITZ_GPIO_G3_STROBE_BIT;
}
