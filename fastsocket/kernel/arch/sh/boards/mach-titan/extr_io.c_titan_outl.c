
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PXSEG (unsigned long) ;
 int ctrl_outl (int ,unsigned long) ;
 int maybebadio (unsigned long) ;

void titan_outl(u32 value, unsigned long port)
{
        if (PXSEG(port))
                ctrl_outl(value, port);
        else
                maybebadio(port);
}
