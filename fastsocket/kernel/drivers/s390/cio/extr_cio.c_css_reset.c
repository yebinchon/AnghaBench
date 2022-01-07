
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int id; } ;


 int RCHP_TIMEOUT ;
 int __MAX_CHPID ;
 int __ctl_clear_bit (int,int) ;
 int __ctl_set_bit (int,int) ;
 int __shutdown_subchannel_easy ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int chp_id_init (struct chp_id*) ;
 int chpid_reset_count ;
 int cpu_relax () ;
 int for_each_subchannel (int ,int *) ;
 unsigned long long get_clock () ;
 int local_mcck_disable () ;
 int local_mcck_enable () ;
 int rchp (struct chp_id) ;
 int * s390_base_mcck_handler_fn ;
 int * s390_reset_chpids_mcck_handler ;

__attribute__((used)) static void css_reset(void)
{
 int i, ret;
 unsigned long long timeout;
 struct chp_id chpid;


 for_each_subchannel(__shutdown_subchannel_easy, ((void*)0));

 s390_base_mcck_handler_fn = s390_reset_chpids_mcck_handler;

 __ctl_set_bit(14, 28);

 local_mcck_enable();
 chp_id_init(&chpid);
 for (i = 0; i <= __MAX_CHPID; i++) {
  chpid.id = i;
  ret = rchp(chpid);
  if ((ret == 0) || (ret == 2))




   atomic_inc(&chpid_reset_count);
 }

 timeout = get_clock() + (RCHP_TIMEOUT << 12);
 while (atomic_read(&chpid_reset_count) != 0) {
  if (get_clock() > timeout)
   break;
  cpu_relax();
 }

 local_mcck_disable();

 __ctl_clear_bit(14, 28);
 s390_base_mcck_handler_fn = ((void*)0);
}
