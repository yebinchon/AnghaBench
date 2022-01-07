
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int is_uv () ;

void
xp_exit_uv(void)
{
 BUG_ON(!is_uv());
}
