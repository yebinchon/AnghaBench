
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
typedef int ctl_table ;
struct TYPE_3__ {int prid; } ;
struct TYPE_4__ {int li_prid; TYPE_1__ li_eeprom_info; } ;


 TYPE_2__ lasat_board_info ;
 int lasat_init_board_info () ;
 int lasat_write_eeprom_info () ;
 int proc_dointvec (int *,int,void*,size_t*,int *) ;

int proc_lasat_prid(ctl_table *table, int write,
         void *buffer, size_t *lenp, loff_t *ppos)
{
 int r;

 r = proc_dointvec(table, write, buffer, lenp, ppos);
 if (r < 0)
  return r;
 if (write) {
  lasat_board_info.li_eeprom_info.prid =
   lasat_board_info.li_prid;
  lasat_write_eeprom_info();
  lasat_init_board_info();
 }
 return 0;
}
