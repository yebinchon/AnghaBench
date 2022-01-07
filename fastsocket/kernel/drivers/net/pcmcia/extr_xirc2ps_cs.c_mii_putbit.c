
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PutByte (scalar_t__,int) ;
 int PutWord (scalar_t__,int) ;
 scalar_t__ XIRCREG2_GPR2 ;
 int udelay (int) ;

__attribute__((used)) static void
mii_putbit(unsigned int ioaddr, unsigned data)
{

    if (data) {
 PutByte(XIRCREG2_GPR2, 0x0c|2|0);
 udelay(1);
 PutByte(XIRCREG2_GPR2, 0x0c|2|1);
 udelay(1);
    } else {
 PutByte(XIRCREG2_GPR2, 0x0c|0|0);
 udelay(1);
 PutByte(XIRCREG2_GPR2, 0x0c|0|1);
 udelay(1);
    }
}
