
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISA_COR ;
 unsigned char ISA_COR_RESET ;
 scalar_t__ ISA_ISR ;
 int ISA_ISR_SERIAL ;
 int ISA_SER_ID ;
 int inb (scalar_t__) ;
 int mdelay (int) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static int
act2000_isa_reset(unsigned short portbase)
{
        unsigned char reg;
        int i;
        int found;
        int serial = 0;

        found = 0;
        if ((reg = inb(portbase + ISA_COR)) != 0xff) {
                outb(reg | ISA_COR_RESET, portbase + ISA_COR);
                mdelay(10);
                outb(reg, portbase + ISA_COR);
                mdelay(10);

                for (i = 0; i < 16; i++) {
                        if (inb(portbase + ISA_ISR) & ISA_ISR_SERIAL)
                                serial |= 0x10000;
                        serial >>= 1;
                }
                if (serial == ISA_SER_ID)
                        found++;
        }
        return found;
}
