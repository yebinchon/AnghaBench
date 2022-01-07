
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_delay () ;
 int ctrl_inb (unsigned long) ;
 int ctrl_inw (int ) ;
 int port2adr (unsigned long) ;

u8 titan_inb_p(unsigned long port)
{
        u8 v;

        if (PXSEG(port))
                v = ctrl_inb(port);
        else
                v = ctrl_inw(port2adr(port)) & 0xff;
        ctrl_delay();
        return v;
}
