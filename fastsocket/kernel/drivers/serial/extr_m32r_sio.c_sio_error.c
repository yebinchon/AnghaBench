
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_SIO0_CR_PORTL ;
 int __sio_in (int ) ;
 int printk (char*,int) ;
 int sio_init () ;

__attribute__((used)) static void sio_error(int *status)
{
 printk("SIO0 error[%04x]\n", *status);
 do {
  sio_init();
 } while ((*status = __sio_in(M32R_SIO0_CR_PORTL)) != 3);
}
