
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc; } ;


 int barrier () ;
 TYPE_1__* rbdf ;

__attribute__((used)) static unsigned char cpm_serial_tstc(void)
{
 barrier();
 return !(rbdf->sc & 0x8000);
}
