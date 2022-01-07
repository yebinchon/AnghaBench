
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO18_RDY_MD ;
 int GPIO_IN ;
 int pxa_gpio_mode (int) ;

__attribute__((used)) static void spitz_postsuspend(void)
{
 pxa_gpio_mode(GPIO18_RDY_MD);
 pxa_gpio_mode(10 | GPIO_IN);
}
