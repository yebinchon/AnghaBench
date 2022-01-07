
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_outw (int ,unsigned long) ;
 int maybebadio (unsigned long) ;
 unsigned long port2adr (unsigned long) ;

void titan_outw(u16 value, unsigned long port)
{
        if (PXSEG(port))
                ctrl_outw(value, port);
        else if (port >= 0x2000)
                ctrl_outw(value, port2adr(port));
        else
                maybebadio(port);
}
