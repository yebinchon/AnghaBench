
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int driver_lock; int cmdpendingq; int cmdfreeq; int command_timer; int * vif; int lock; int current_addr; } ;


 int ETH_ALEN ;
 int INIT_LIST_HEAD (int *) ;
 int LBTF_DEB_MAIN ;
 int command_timer_fn ;
 scalar_t__ lbtf_allocate_cmd_buffer (struct lbtf_private*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int memset (int ,int,int ) ;
 int mutex_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int lbtf_init_adapter(struct lbtf_private *priv)
{
 lbtf_deb_enter(LBTF_DEB_MAIN);
 memset(priv->current_addr, 0xff, ETH_ALEN);
 mutex_init(&priv->lock);

 priv->vif = ((void*)0);
 setup_timer(&priv->command_timer, command_timer_fn,
  (unsigned long)priv);

 INIT_LIST_HEAD(&priv->cmdfreeq);
 INIT_LIST_HEAD(&priv->cmdpendingq);

 spin_lock_init(&priv->driver_lock);


 if (lbtf_allocate_cmd_buffer(priv))
  return -1;

 lbtf_deb_leave(LBTF_DEB_MAIN);
 return 0;
}
