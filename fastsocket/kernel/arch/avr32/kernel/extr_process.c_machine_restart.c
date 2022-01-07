
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DC ;
 int OCD_DC_DBE_BIT ;
 int OCD_DC_RES_BIT ;
 int ocd_write (int ,int) ;

void machine_restart(char *cmd)
{
 ocd_write(DC, (1 << OCD_DC_DBE_BIT));
 ocd_write(DC, (1 << OCD_DC_RES_BIT));
 while (1) ;
}
