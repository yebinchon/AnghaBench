
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int ETIME ;
 unsigned int read_c0_count () ;
 int write_c0_compare (unsigned int) ;

__attribute__((used)) static int mips_next_event(unsigned long delta,
                           struct clock_event_device *evt)
{
 unsigned int cnt;
 int res;

 cnt = read_c0_count();
 cnt += delta;
 write_c0_compare(cnt);
 res = ((int)(read_c0_count() - cnt) > 0) ? -ETIME : 0;
 return res;
}
