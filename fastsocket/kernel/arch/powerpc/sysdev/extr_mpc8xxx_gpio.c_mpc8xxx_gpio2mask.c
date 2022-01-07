
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int MPC8XXX_GPIO_PINS ;

__attribute__((used)) static inline u32 mpc8xxx_gpio2mask(unsigned int gpio)
{
 return 1u << (MPC8XXX_GPIO_PINS - 1 - gpio);
}
