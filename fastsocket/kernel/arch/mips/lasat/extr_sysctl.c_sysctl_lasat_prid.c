
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ctl_table ;
struct TYPE_3__ {int prid; } ;
struct TYPE_4__ {TYPE_1__ li_eeprom_info; } ;


 TYPE_2__ lasat_board_info ;
 int lasat_init_board_info () ;
 int lasat_write_eeprom_info () ;
 int sysctl_intvec (int *,void*,size_t*,void*,size_t) ;

__attribute__((used)) static int sysctl_lasat_prid(ctl_table *table,
         void *oldval, size_t *oldlenp,
         void *newval, size_t newlen)
{
 int r;

 r = sysctl_intvec(table, oldval, oldlenp, newval, newlen);
 if (r < 0)
  return r;
 if (newval && newlen) {
  lasat_board_info.li_eeprom_info.prid = *(int *)newval;
  lasat_write_eeprom_info();
  lasat_init_board_info();
 }
 return 0;
}
