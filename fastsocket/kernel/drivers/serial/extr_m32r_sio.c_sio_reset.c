
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAUD_RATE ;
 int M32R_SIO0_CR_PORTL ;
 int M32R_SIO0_MOD0_PORTL ;
 int M32R_SIO0_MOD1_PORTL ;
 int M32R_SIO0_TRCR_PORTL ;
 int __sio_out (int,int ) ;
 int sio_set_baud_rate (int ) ;

__attribute__((used)) static void sio_reset(void)
{
 __sio_out(0x00000300, M32R_SIO0_CR_PORTL);
 __sio_out(0x00000800, M32R_SIO0_MOD1_PORTL);
 __sio_out(0x00000080, M32R_SIO0_MOD0_PORTL);
 sio_set_baud_rate(BAUD_RATE);
 __sio_out(0x00000000, M32R_SIO0_TRCR_PORTL);
 __sio_out(0x00000003, M32R_SIO0_CR_PORTL);
}
