
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disc_mutex; int * disc_callback; } ;
struct fc_lport {TYPE_1__ disc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fcoe_ctlr_disc_stop_locked(struct fc_lport *lport)
{
 mutex_lock(&lport->disc.disc_mutex);
 lport->disc.disc_callback = ((void*)0);
 mutex_unlock(&lport->disc.disc_mutex);
}
