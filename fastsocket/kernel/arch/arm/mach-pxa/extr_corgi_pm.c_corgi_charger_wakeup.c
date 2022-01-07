
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_AC_IN ;
 int CORGI_GPIO_KEY_INT ;
 int CORGI_GPIO_WAKEUP ;
 unsigned long GPIO_bit (int ) ;
 unsigned long GPLR0 ;

__attribute__((used)) static unsigned long corgi_charger_wakeup(void)
{
 return ~GPLR0 & ( GPIO_bit(CORGI_GPIO_AC_IN) | GPIO_bit(CORGI_GPIO_KEY_INT) | GPIO_bit(CORGI_GPIO_WAKEUP) );
}
