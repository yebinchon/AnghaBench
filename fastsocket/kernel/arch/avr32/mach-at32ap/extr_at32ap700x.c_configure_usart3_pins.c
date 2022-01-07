
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT32_GPIOF_PULLUP ;
 int ATMEL_USART_CLK ;
 int ATMEL_USART_CTS ;
 int ATMEL_USART_RTS ;
 int PERIPH_B ;
 int PIOB ;
 int select_peripheral (int ,int,int ,int ) ;

__attribute__((used)) static inline void configure_usart3_pins(int flags)
{
 u32 pin_mask = (1 << 18) | (1 << 17);
 if (flags & ATMEL_USART_RTS) pin_mask |= (1 << 16);
 if (flags & ATMEL_USART_CTS) pin_mask |= (1 << 15);
 if (flags & ATMEL_USART_CLK) pin_mask |= (1 << 19);

 select_peripheral(PIOB, pin_mask, PERIPH_B, AT32_GPIOF_PULLUP);
}
