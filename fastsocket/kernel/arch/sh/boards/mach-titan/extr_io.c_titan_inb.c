
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_inb (unsigned long) ;
 int ctrl_inw (int ) ;
 int port2adr (unsigned long) ;

u8 titan_inb(unsigned long port)
{
        if (PXSEG(port))
                return ctrl_inb(port);
        return ctrl_inw(port2adr(port)) & 0xff;
}
