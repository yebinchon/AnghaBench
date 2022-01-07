
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPMI_SET_TIMEOUT_FORCE_HB ;
 int IPMI_SET_TIMEOUT_HB_IF_NECESSARY ;
 int atomic_set (int *,int) ;
 int i_ipmi_set_timeout (int *,int *,int*) ;
 int ipmi_heartbeat () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_timeout_lock ;
 int set_timeout_recv_msg ;
 int set_timeout_smi_msg ;
 int set_timeout_tofree ;
 int set_timeout_wait ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ipmi_set_timeout(int do_heartbeat)
{
 int send_heartbeat_now;
 int rv;



 mutex_lock(&set_timeout_lock);

 atomic_set(&set_timeout_tofree, 2);

 rv = i_ipmi_set_timeout(&set_timeout_smi_msg,
    &set_timeout_recv_msg,
    &send_heartbeat_now);
 if (rv) {
  mutex_unlock(&set_timeout_lock);
  goto out;
 }

 wait_for_completion(&set_timeout_wait);

 mutex_unlock(&set_timeout_lock);

 if ((do_heartbeat == IPMI_SET_TIMEOUT_FORCE_HB)
     || ((send_heartbeat_now)
  && (do_heartbeat == IPMI_SET_TIMEOUT_HB_IF_NECESSARY)))
  rv = ipmi_heartbeat();

out:
 return rv;
}
