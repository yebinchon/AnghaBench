
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_exch_mgr_anchor {TYPE_1__* mp; int ema_list; } ;
struct TYPE_2__ {int kref; } ;


 int fc_exch_mgr_destroy ;
 int kfree (struct fc_exch_mgr_anchor*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;

void fc_exch_mgr_del(struct fc_exch_mgr_anchor *ema)
{

 list_del(&ema->ema_list);
 kref_put(&ema->mp->kref, fc_exch_mgr_destroy);
 kfree(ema);
}
