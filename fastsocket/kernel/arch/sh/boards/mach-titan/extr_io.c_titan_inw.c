
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_inw (unsigned long) ;
 int maybebadio (unsigned long) ;
 unsigned long port2adr (unsigned long) ;

u16 titan_inw(unsigned long port)
{
        if (PXSEG(port))
                return ctrl_inw(port);
        else if (port >= 0x2000)
                return ctrl_inw(port2adr(port));
        else
                maybebadio(port);
        return 0;
}
