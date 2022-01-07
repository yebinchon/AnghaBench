
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmm_kick_thread () ;
 long cmm_pages_target ;

void
cmm_set_pages(long nr)
{
 cmm_pages_target = nr;
 cmm_kick_thread();
}
