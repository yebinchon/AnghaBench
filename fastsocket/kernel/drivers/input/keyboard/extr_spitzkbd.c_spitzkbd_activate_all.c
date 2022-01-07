
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEDR0 ;
 int GEDR1 ;
 int GEDR2 ;
 int GEDR3 ;
 int GPDR0 ;
 int GPDR1 ;
 int GPDR2 ;
 int GPDR3 ;
 int GPSR0 ;
 int GPSR1 ;
 int GPSR2 ;
 int GPSR3 ;
 int KB_DISCHARGE_DELAY ;
 int SPITZ_GPIO_G0_SENSE_BIT ;
 int SPITZ_GPIO_G0_STROBE_BIT ;
 int SPITZ_GPIO_G1_SENSE_BIT ;
 int SPITZ_GPIO_G1_STROBE_BIT ;
 int SPITZ_GPIO_G2_SENSE_BIT ;
 int SPITZ_GPIO_G2_STROBE_BIT ;
 int SPITZ_GPIO_G3_SENSE_BIT ;
 int SPITZ_GPIO_G3_STROBE_BIT ;
 int udelay (int ) ;

__attribute__((used)) static inline void spitzkbd_activate_all(void)
{

 GPSR0 = SPITZ_GPIO_G0_STROBE_BIT;
 GPDR0 |= SPITZ_GPIO_G0_STROBE_BIT;
 GPSR1 = SPITZ_GPIO_G1_STROBE_BIT;
 GPDR1 |= SPITZ_GPIO_G1_STROBE_BIT;
 GPSR2 = SPITZ_GPIO_G2_STROBE_BIT;
 GPDR2 |= SPITZ_GPIO_G2_STROBE_BIT;
 GPSR3 = SPITZ_GPIO_G3_STROBE_BIT;
 GPDR3 |= SPITZ_GPIO_G3_STROBE_BIT;

 udelay(KB_DISCHARGE_DELAY);


 GEDR0 = SPITZ_GPIO_G0_SENSE_BIT;
 GEDR1 = SPITZ_GPIO_G1_SENSE_BIT;
 GEDR2 = SPITZ_GPIO_G2_SENSE_BIT;
 GEDR3 = SPITZ_GPIO_G3_SENSE_BIT;
}
