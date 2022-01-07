
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_finddevice (char*) ;
 int this_is_starfire ;

void check_if_starfire(void)
{
 int ssnode = prom_finddevice("/ssp-serial");
 if (ssnode != 0 && ssnode != -1)
  this_is_starfire = 1;
}
