
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SIO_GPIO_PIN_CONFIG ;
 int pc8736x_gpio_configure_fn (unsigned int,int ,int ,int ) ;

__attribute__((used)) static u32 pc8736x_gpio_configure(unsigned index, u32 mask, u32 bits)
{
 return pc8736x_gpio_configure_fn(index, mask, bits,
      SIO_GPIO_PIN_CONFIG);
}
