
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dynpcc_info {scalar_t__ cnt; void* attempt; void* cur; } ;
struct jme_adapter {int link_changing; int rxempty_task; int rxclean_task; int flags; struct dynpcc_info dpi; } ;


 int JME_FLAG_POLL ;
 int JME_NAPI_ENABLE (struct jme_adapter*) ;
 void* PCC_P1 ;
 int atomic_inc (int *) ;
 int jme_set_rx_pcc (struct jme_adapter*,void*) ;
 int tasklet_hi_enable (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void jme_resume_rx(struct jme_adapter *jme)
{
 struct dynpcc_info *dpi = &(jme->dpi);

 if (test_bit(JME_FLAG_POLL, &jme->flags)) {
  JME_NAPI_ENABLE(jme);
 } else {
  tasklet_hi_enable(&jme->rxclean_task);
  tasklet_hi_enable(&jme->rxempty_task);
 }
 dpi->cur = PCC_P1;
 dpi->attempt = PCC_P1;
 dpi->cnt = 0;
 jme_set_rx_pcc(jme, PCC_P1);

 atomic_inc(&jme->link_changing);
}
