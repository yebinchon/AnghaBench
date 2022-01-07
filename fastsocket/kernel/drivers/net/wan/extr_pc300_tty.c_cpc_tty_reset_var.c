
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
typedef int st_cpc_tty_area ;


 int CPC_TTY_DBG (char*) ;
 int CPC_TTY_NPORTS ;
 int * cpc_tty_area ;
 int memset (int *,int ,int) ;
 int serial_drv ;

void cpc_tty_reset_var(void)
{
 int i ;

 CPC_TTY_DBG("hdlcX-tty: reset variables\n");

 memset(&serial_drv, 0, sizeof(struct tty_driver));
 for (i=0; i < CPC_TTY_NPORTS; i++){
  memset(&cpc_tty_area[i],0, sizeof(st_cpc_tty_area));
 }
}
