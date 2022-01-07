
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int can_do_pal_halt ;
 scalar_t__ pal_halt ;

void
update_pal_halt_status(int status)
{
 can_do_pal_halt = pal_halt && status;
}
