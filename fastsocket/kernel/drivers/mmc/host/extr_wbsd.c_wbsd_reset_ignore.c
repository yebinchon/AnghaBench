
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int lock; int card_tasklet; int flags; } ;


 int BUG_ON (int ) ;
 int DBG (char*) ;
 int WBSD_FIGNORE_DETECT ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void wbsd_reset_ignore(unsigned long data)
{
 struct wbsd_host *host = (struct wbsd_host *)data;

 BUG_ON(host == ((void*)0));

 DBG("Resetting card detection ignore\n");

 spin_lock_bh(&host->lock);

 host->flags &= ~WBSD_FIGNORE_DETECT;





 tasklet_schedule(&host->card_tasklet);

 spin_unlock_bh(&host->lock);
}
