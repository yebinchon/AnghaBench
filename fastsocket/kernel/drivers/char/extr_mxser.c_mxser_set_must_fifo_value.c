
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxser_port {scalar_t__ ioaddr; scalar_t__ rx_low_water; scalar_t__ rx_trigger; scalar_t__ rx_high_water; } ;


 int MOXA_MUST_EFR_BANK1 ;
 int MOXA_MUST_EFR_BANK_MASK ;
 scalar_t__ MOXA_MUST_EFR_REGISTER ;
 int MOXA_MUST_ENTER_ENCHANCE ;
 scalar_t__ MOXA_MUST_RBRTH_REGISTER ;
 scalar_t__ MOXA_MUST_RBRTI_REGISTER ;
 scalar_t__ MOXA_MUST_RBRTL_REGISTER ;
 scalar_t__ UART_LCR ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void mxser_set_must_fifo_value(struct mxser_port *info)
{
 u8 oldlcr;
 u8 efr;

 oldlcr = inb(info->ioaddr + UART_LCR);
 outb(MOXA_MUST_ENTER_ENCHANCE, info->ioaddr + UART_LCR);

 efr = inb(info->ioaddr + MOXA_MUST_EFR_REGISTER);
 efr &= ~MOXA_MUST_EFR_BANK_MASK;
 efr |= MOXA_MUST_EFR_BANK1;

 outb(efr, info->ioaddr + MOXA_MUST_EFR_REGISTER);
 outb((u8)info->rx_high_water, info->ioaddr + MOXA_MUST_RBRTH_REGISTER);
 outb((u8)info->rx_trigger, info->ioaddr + MOXA_MUST_RBRTI_REGISTER);
 outb((u8)info->rx_low_water, info->ioaddr + MOXA_MUST_RBRTL_REGISTER);
 outb(oldlcr, info->ioaddr + UART_LCR);
}
