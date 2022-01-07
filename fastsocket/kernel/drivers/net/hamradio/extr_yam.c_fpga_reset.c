
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLL (int) ;
 int DLM (int) ;
 int IER (int) ;
 int LCR (int) ;
 int LCR_BIT5 ;
 int LCR_DLAB ;
 int LSR (int) ;
 int MCR (int) ;
 int MCR_DTR ;
 int MCR_OUT1 ;
 int MCR_OUT2 ;
 int MCR_RTS ;
 int MSR (int) ;
 int delay (int) ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void fpga_reset(int iobase)
{
 outb(0, IER(iobase));
 outb(LCR_DLAB | LCR_BIT5, LCR(iobase));
 outb(1, DLL(iobase));
 outb(0, DLM(iobase));

 outb(LCR_BIT5, LCR(iobase));
 inb(LSR(iobase));
 inb(MSR(iobase));

 outb(MCR_OUT1 | MCR_OUT2, MCR(iobase));
 delay(100);

 outb(MCR_DTR | MCR_RTS | MCR_OUT1 | MCR_OUT2, MCR(iobase));
 delay(100);
}
