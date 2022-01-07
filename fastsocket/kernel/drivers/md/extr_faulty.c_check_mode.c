
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct faulty_conf {scalar_t__* period; int * counters; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;

__attribute__((used)) static int check_mode(struct faulty_conf *conf, int mode)
{
 if (conf->period[mode] == 0 &&
     atomic_read(&conf->counters[mode]) <= 0)
  return 0;


 if (atomic_dec_and_test(&conf->counters[mode])) {
  if (conf->period[mode])
   atomic_set(&conf->counters[mode], conf->period[mode]);
  return 1;
 }
 return 0;
}
