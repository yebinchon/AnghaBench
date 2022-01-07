
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_delay () ;
 int ctrl_outb (int ,unsigned long) ;
 int ctrl_outw (int ,int ) ;
 int port2adr (unsigned long) ;

void titan_outb_p(u8 value, unsigned long port)
{
        if (PXSEG(port))
                ctrl_outb(value, port);
        else
                ctrl_outw(value, port2adr(port));
        ctrl_delay();
}
