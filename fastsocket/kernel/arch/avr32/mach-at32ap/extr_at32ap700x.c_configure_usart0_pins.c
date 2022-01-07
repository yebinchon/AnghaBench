
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
 int PIOA ;
 int select_peripheral (int ,int,int ,int ) ;

__attribute__((used)) static inline void configure_usart0_pins(int flags)
{
 u32 pin_mask = (1 << 8) | (1 << 9);
 if (flags & ATMEL_USART_RTS) pin_mask |= (1 << 6);
 if (flags & ATMEL_USART_CTS) pin_mask |= (1 << 7);
 if (flags & ATMEL_USART_CLK) pin_mask |= (1 << 10);

 select_peripheral(PIOA, pin_mask, PERIPH_B, AT32_GPIOF_PULLUP);
}
