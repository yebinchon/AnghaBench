
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm3386_secondary_present () ;

int pm3386_port_count(void)
{
 return 2 + pm3386_secondary_present();
}
