
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_NPROCESSORS_ONLN ;
 int sysconf (int ) ;

int get_cpu_num()
{
 return sysconf(_SC_NPROCESSORS_ONLN);
}
