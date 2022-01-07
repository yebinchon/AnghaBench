
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEDR2 ;
 int GPDR1 ;
 int GPDR2 ;
 int GPSR1 ;
 int GPSR2 ;
 int KB_DISCHARGE_DELAY ;
 int TOSA_GPIO_ALL_SENSE_BIT ;
 int TOSA_GPIO_HIGH_STROBE_BIT ;
 int TOSA_GPIO_LOW_STROBE_BIT ;
 int udelay (int ) ;

__attribute__((used)) static inline void tosakbd_activate_all(void)
{

 GPSR1 = TOSA_GPIO_HIGH_STROBE_BIT;
 GPDR1 |= TOSA_GPIO_HIGH_STROBE_BIT;
 GPSR2 = TOSA_GPIO_LOW_STROBE_BIT;
 GPDR2 |= TOSA_GPIO_LOW_STROBE_BIT;

 udelay(KB_DISCHARGE_DELAY);


 GEDR2 |= TOSA_GPIO_ALL_SENSE_BIT;
}
