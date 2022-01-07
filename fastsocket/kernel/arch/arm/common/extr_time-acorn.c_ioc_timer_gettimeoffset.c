
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOC_IRQREQA ;
 int IOC_T0CNTH ;
 int IOC_T0CNTL ;
 int IOC_T0LATCH ;
 long LATCH ;
 int barrier () ;
 int ioc_readb (int ) ;
 int ioc_writeb (int ,int ) ;
 int tick_nsec ;

unsigned long ioc_timer_gettimeoffset(void)
{
 unsigned int count1, count2, status;
 long offset;

 ioc_writeb (0, IOC_T0LATCH);
 barrier ();
 count1 = ioc_readb(IOC_T0CNTL) | (ioc_readb(IOC_T0CNTH) << 8);
 barrier ();
 status = ioc_readb(IOC_IRQREQA);
 barrier ();
 ioc_writeb (0, IOC_T0LATCH);
 barrier ();
 count2 = ioc_readb(IOC_T0CNTL) | (ioc_readb(IOC_T0CNTH) << 8);

 offset = count2;
 if (count2 < count1) {




  if (status & (1 << 5))
   offset -= LATCH;
 } else if (count2 > count1) {




  offset -= LATCH;
 }

 offset = (LATCH - offset) * (tick_nsec / 1000);
 return (offset + LATCH/2) / LATCH;
}
