
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_delay () ;
 unsigned char* port2adr (unsigned long) ;

void sh7751se_outb_p(unsigned char value, unsigned long port)
{
        if (PXSEG(port))
                *(volatile unsigned char *)port = value;
 else
  *(port2adr(port)) = value;
 ctrl_delay();
}
