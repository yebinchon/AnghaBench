
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NSEC_PER_USEC ;
 int SPINUNIT ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int barrier () ;
 int global_nwo ;
 int mce_callin ;
 int mce_executing ;
 int mce_reign () ;
 scalar_t__ mce_timed_out (int*) ;
 scalar_t__ monarch_timeout ;
 int ndelay (int ) ;
 int num_online_cpus () ;

__attribute__((used)) static int mce_end(int order)
{
 int ret = -1;
 u64 timeout = (u64)monarch_timeout * NSEC_PER_USEC;

 if (!timeout)
  goto reset;
 if (order < 0)
  goto reset;




 atomic_inc(&mce_executing);

 if (order == 1) {

  int cpus = num_online_cpus();





  while (atomic_read(&mce_executing) <= cpus) {
   if (mce_timed_out(&timeout))
    goto reset;
   ndelay(SPINUNIT);
  }

  mce_reign();
  barrier();
  ret = 0;
 } else {



  while (atomic_read(&mce_executing) != 0) {
   if (mce_timed_out(&timeout))
    goto reset;
   ndelay(SPINUNIT);
  }




  return 0;
 }




reset:
 atomic_set(&global_nwo, 0);
 atomic_set(&mce_callin, 0);
 barrier();




 atomic_set(&mce_executing, 0);
 return ret;
}
