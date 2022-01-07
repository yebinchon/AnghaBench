
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long tv_sec; } ;


 int xen_read_wallclock (struct timespec*) ;

unsigned long xen_get_wallclock(void)
{
 struct timespec ts;

 xen_read_wallclock(&ts);
 return ts.tv_sec;
}
