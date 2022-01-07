
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT32_GPIOF_PULLUP ;
 int ATMEL_USART_CLK ;
 int ATMEL_USART_CTS ;
 int ATMEL_USART_RTS ;
 int PERIPH_A ;
 int PIOA ;
 int select_peripheral (int ,int,int ,int ) ;

__attribute__((used)) static inline void configure_usart1_pins(int flags)
{
 u32 pin_mask = (1 << 17) | (1 << 18);
 if (flags & ATMEL_USART_RTS) pin_mask |= (1 << 19);
 if (flags & ATMEL_USART_CTS) pin_mask |= (1 << 20);
 if (flags & ATMEL_USART_CLK) pin_mask |= (1 << 16);

 select_peripheral(PIOA, pin_mask, PERIPH_A, AT32_GPIOF_PULLUP);
}
