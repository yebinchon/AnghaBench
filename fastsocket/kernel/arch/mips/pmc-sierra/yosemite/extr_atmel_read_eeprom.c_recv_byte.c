
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recv_bit () ;

__attribute__((used)) static unsigned char recv_byte(void) {
        int i;
        unsigned char byte=0;

        for (i=7;i>=0;i--)
                byte |= (recv_bit() << i);

        return byte;
}
