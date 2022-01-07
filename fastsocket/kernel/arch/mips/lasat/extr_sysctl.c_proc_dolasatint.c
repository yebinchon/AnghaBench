
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;
typedef int ctl_table ;


 int lasat_write_eeprom_info () ;
 int proc_dointvec (int *,int,void*,size_t*,int *) ;

int proc_dolasatint(ctl_table *table, int write,
         void *buffer, size_t *lenp, loff_t *ppos)
{
 int r;

 r = proc_dointvec(table, write, buffer, lenp, ppos);
 if ((!write) || r)
  return r;

 lasat_write_eeprom_info();

 return 0;
}
