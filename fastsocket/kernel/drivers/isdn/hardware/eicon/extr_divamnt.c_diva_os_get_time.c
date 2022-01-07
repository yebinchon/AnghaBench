
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef scalar_t__ dword ;
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;


 int do_gettimeofday (struct timeval*) ;
 TYPE_1__ start_time ;

void diva_os_get_time(dword * sec, dword * usec)
{
 struct timeval tv;

 do_gettimeofday(&tv);

 if (tv.tv_sec > start_time.tv_sec) {
  if (start_time.tv_usec > tv.tv_usec) {
   tv.tv_sec--;
   tv.tv_usec += 1000000;
  }
  *sec = (dword) (tv.tv_sec - start_time.tv_sec);
  *usec = (dword) (tv.tv_usec - start_time.tv_usec);
 } else if (tv.tv_sec == start_time.tv_sec) {
  *sec = 0;
  if (start_time.tv_usec < tv.tv_usec) {
   *usec = (dword) (tv.tv_usec - start_time.tv_usec);
  } else {
   *usec = 0;
  }
 } else {
  *sec = (dword) tv.tv_sec;
  *usec = (dword) tv.tv_usec;
 }
}
