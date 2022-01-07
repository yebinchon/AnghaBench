
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int act2000_card ;


 int ISA_PORT_SDI ;
 int ISA_PORT_SIS ;
 int ISA_SIS_READY ;
 int inb (int ) ;
 int udelay (int) ;

__attribute__((used)) static int
act2000_isa_readb(act2000_card * card, u_char * data)
{
        u_char timeout = 40;

        while (timeout) {
                if (inb(ISA_PORT_SIS) & ISA_SIS_READY) {
                        *data = inb(ISA_PORT_SDI);
                        return 0;
                } else {
                        timeout--;
                        udelay(10);
                }
        }
        return 1;
}
