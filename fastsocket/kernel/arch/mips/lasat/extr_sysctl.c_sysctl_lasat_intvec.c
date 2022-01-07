
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctl_table ;


 int lasat_write_eeprom_info () ;
 int sysctl_intvec (int *,void*,size_t*,void*,size_t) ;

int sysctl_lasat_intvec(ctl_table *table,
      void *oldval, size_t *oldlenp,
      void *newval, size_t newlen)
{
 int r;

 r = sysctl_intvec(table, oldval, oldlenp, newval, newlen);
 if (r < 0)
  return r;

 if (newval && newlen)
  lasat_write_eeprom_info();

 return 0;
}
