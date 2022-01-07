
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF0 ;
 int bfin_write_FIO_DIR (int ) ;
 int bfin_write_FIO_FLAG_C (int ) ;
 int bfin_write_FIO_INEN (int ) ;

void native_machine_restart(char *cmd)
{

 bfin_write_FIO_INEN(~PF0);
 bfin_write_FIO_DIR(PF0);
 bfin_write_FIO_FLAG_C(PF0);
}
