
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct TYPE_2__ {int last_progress; } ;


 int PRINT (char*,unsigned long long,unsigned long long,double) ;
 int fflush (int ) ;
 TYPE_1__ g ;
 int gettimeofday (struct timeval*,int *) ;
 int stdout ;

__attribute__((used)) static void show_progress(unsigned long long written, unsigned long long max)
{
 int time;
 struct timeval t;
 double percent;

 gettimeofday(&t, ((void*)0));
 time = t.tv_sec;
 if ((time < g.last_progress) && (written != max) && (written != 0))
  return;
 g.last_progress = time + 10;
 percent = ((double) written / (double) max) * 100.0;
 PRINT(" %4lli MB of %4lli MB (%5.1f%% )\n", written >> 20, max >> 20,
  percent);
 fflush(stdout);
}
