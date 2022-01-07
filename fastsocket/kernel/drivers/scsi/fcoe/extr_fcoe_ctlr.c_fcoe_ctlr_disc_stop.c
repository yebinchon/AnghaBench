
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr {int ctlr_mutex; } ;
struct TYPE_2__ {struct fcoe_ctlr* priv; } ;
struct fc_lport {TYPE_1__ disc; } ;


 int fcoe_ctlr_disc_stop_locked (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fcoe_ctlr_disc_stop(struct fc_lport *lport)
{
 struct fcoe_ctlr *fip = lport->disc.priv;

 mutex_lock(&fip->ctlr_mutex);
 fcoe_ctlr_disc_stop_locked(lport);
 mutex_unlock(&fip->ctlr_mutex);
}
