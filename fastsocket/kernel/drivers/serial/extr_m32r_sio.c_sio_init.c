
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_SIO0_CR_PORTL ;
 int M32R_SIO0_RXB_PORTL ;
 int M32R_SIO0_STS_PORTL ;
 unsigned int __sio_in (int ) ;
 int __sio_out (int,int ) ;

__attribute__((used)) static void sio_init(void)
{
 unsigned int tmp;

 tmp = __sio_in(M32R_SIO0_RXB_PORTL);
 tmp = __sio_in(M32R_SIO0_RXB_PORTL);
 tmp = __sio_in(M32R_SIO0_STS_PORTL);
 __sio_out(0x00000003, M32R_SIO0_CR_PORTL);
}
