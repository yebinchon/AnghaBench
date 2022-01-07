
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroupstats {scalar_t__ nr_uninterruptible; scalar_t__ nr_stopped; scalar_t__ nr_running; scalar_t__ nr_io_wait; scalar_t__ nr_sleeping; } ;


 int printf (char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static void print_cgroupstats(struct cgroupstats *c)
{
 printf("sleeping %llu, blocked %llu, running %llu, stopped %llu, "
  "uninterruptible %llu\n", (unsigned long long)c->nr_sleeping,
  (unsigned long long)c->nr_io_wait,
  (unsigned long long)c->nr_running,
  (unsigned long long)c->nr_stopped,
  (unsigned long long)c->nr_uninterruptible);
}
