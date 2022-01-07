
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int GDBPORT_SERIAL_DLL ;
 unsigned int GDBPORT_SERIAL_DLM ;
 int GDBPORT_SERIAL_LCR ;
 int UART_LCR_DLAB ;

void gdbstub_io_set_baud(unsigned baud)
{
 unsigned value;
 u8 lcr;

 value = 18432000 / 16 / baud;

 lcr = GDBPORT_SERIAL_LCR;
 GDBPORT_SERIAL_LCR |= UART_LCR_DLAB;
 GDBPORT_SERIAL_DLL = value & 0xff;
 GDBPORT_SERIAL_DLM = (value >> 8) & 0xff;
 GDBPORT_SERIAL_LCR = lcr;
}
