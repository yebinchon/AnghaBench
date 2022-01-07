
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long bus_clock; } ;


 int M32R_SIO0_BAUR_PORTL ;
 int M32R_SIO0_RBAUR_PORTL ;
 int __sio_out (unsigned long,int ) ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static inline void sio_set_baud_rate(unsigned long baud)
{
 unsigned long i, j;

 i = boot_cpu_data.bus_clock / (baud * 16);
 j = (boot_cpu_data.bus_clock - (i * baud * 16)) / baud;
 i -= 1;
 j = (j + 1) >> 1;

 __sio_out(i, M32R_SIO0_BAUR_PORTL);
 __sio_out(j, M32R_SIO0_RBAUR_PORTL);
}
