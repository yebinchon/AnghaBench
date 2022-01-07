
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int rxempty_task; int rxclean_task; int flags; int link_changing; } ;


 int JME_FLAG_POLL ;
 int JME_NAPI_DISABLE (struct jme_adapter*) ;
 int PCC_OFF ;
 int atomic_dec (int *) ;
 int jme_set_rx_pcc (struct jme_adapter*,int ) ;
 int tasklet_disable (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void jme_pause_rx(struct jme_adapter *jme)
{
 atomic_dec(&jme->link_changing);

 jme_set_rx_pcc(jme, PCC_OFF);
 if (test_bit(JME_FLAG_POLL, &jme->flags)) {
  JME_NAPI_DISABLE(jme);
 } else {
  tasklet_disable(&jme->rxclean_task);
  tasklet_disable(&jme->rxempty_task);
 }
}
