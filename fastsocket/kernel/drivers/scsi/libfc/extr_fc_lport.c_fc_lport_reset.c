
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int lp_mutex; int retry_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int fc_lport_enter_reset (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fc_lport_reset(struct fc_lport *lport)
{
 cancel_delayed_work_sync(&lport->retry_work);
 mutex_lock(&lport->lp_mutex);
 fc_lport_enter_reset(lport);
 mutex_unlock(&lport->lp_mutex);
 return 0;
}
