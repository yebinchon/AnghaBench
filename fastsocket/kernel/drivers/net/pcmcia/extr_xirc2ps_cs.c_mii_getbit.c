
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GetByte (int ) ;
 int PutByte (int ,int) ;
 int XIRCREG2_GPR2 ;
 int udelay (int) ;

__attribute__((used)) static int
mii_getbit(unsigned int ioaddr)
{
    unsigned d;

    PutByte(XIRCREG2_GPR2, 4|0);
    udelay(1);
    d = GetByte(XIRCREG2_GPR2);
    PutByte(XIRCREG2_GPR2, 4|1);
    udelay(1);
    return d & 0x20;
}
