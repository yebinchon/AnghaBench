
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOAD_FRAC (unsigned long) ;
 int LOAD_INT (unsigned long) ;
 unsigned long this_cpu_load () ;

__attribute__((used)) static int get_loadavg(void)
{
 unsigned long this = this_cpu_load();


 return LOAD_INT(this) * 10 + LOAD_FRAC(this) / 10;
}
