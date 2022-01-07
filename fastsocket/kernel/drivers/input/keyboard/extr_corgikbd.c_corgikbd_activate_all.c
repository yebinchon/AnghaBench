
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_ALL_STROBE_BIT ;
 int CORGI_GPIO_HIGH_SENSE_BIT ;
 int CORGI_GPIO_LOW_SENSE_BIT ;
 int GEDR1 ;
 int GEDR2 ;
 int GPDR2 ;
 int GPSR2 ;
 int KB_DISCHARGE_DELAY ;
 int udelay (int ) ;

__attribute__((used)) static inline void corgikbd_activate_all(void)
{

 GPSR2 = CORGI_GPIO_ALL_STROBE_BIT;
 GPDR2 |= CORGI_GPIO_ALL_STROBE_BIT;

 udelay(KB_DISCHARGE_DELAY);


 GEDR1 = CORGI_GPIO_HIGH_SENSE_BIT;
 GEDR2 = CORGI_GPIO_LOW_SENSE_BIT;
}
