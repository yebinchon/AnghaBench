
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int ocd_disable (int ) ;

void exit_thread(void)
{
 ocd_disable(current);
}
