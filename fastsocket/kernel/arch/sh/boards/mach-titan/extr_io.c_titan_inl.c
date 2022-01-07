
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_inl (unsigned long) ;
 int ctrl_inw (int ) ;
 int maybebadio (unsigned long) ;
 int port2adr (unsigned long) ;

u32 titan_inl(unsigned long port)
{
        if (PXSEG(port))
                return ctrl_inl(port);
        else if (port >= 0x2000)
                return ctrl_inw(port2adr(port));
        else
                maybebadio(port);
        return 0;
}
