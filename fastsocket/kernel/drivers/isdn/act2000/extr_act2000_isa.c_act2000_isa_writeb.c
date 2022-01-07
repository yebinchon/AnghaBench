
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int act2000_card ;


 int ISA_PORT_SDO ;
 int ISA_PORT_SOS ;
 int ISA_SOS_READY ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
act2000_isa_writeb(act2000_card * card, u_char data)
{
        u_char timeout = 40;

        while (timeout) {
                if (inb(ISA_PORT_SOS) & ISA_SOS_READY) {
                        outb(data, ISA_PORT_SDO);
                        return 0;
                } else {
                        timeout--;
                        udelay(10);
                }
        }
        return 1;
}
