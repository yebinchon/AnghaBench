
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short base; } ;
typedef TYPE_1__ ppa_struct ;


 int ppa_d_pulse (unsigned short,int) ;

__attribute__((used)) static void ppa_disconnect(ppa_struct *dev)
{
 unsigned short ppb = dev->base;

 ppa_d_pulse(ppb, 0);
 ppa_d_pulse(ppb, 0x3c);
 ppa_d_pulse(ppb, 0x20);
 ppa_d_pulse(ppb, 0xf);
}
