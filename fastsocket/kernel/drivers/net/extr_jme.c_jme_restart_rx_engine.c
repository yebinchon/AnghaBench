
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_rxcs; } ;


 int JME_RXCS ;
 int RXCS_ENABLE ;
 int RXCS_QST ;
 int RXCS_QUEUESEL_Q0 ;
 int jwrite32 (struct jme_adapter*,int ,int) ;

__attribute__((used)) static inline void
jme_restart_rx_engine(struct jme_adapter *jme)
{



 jwrite32(jme, JME_RXCS, jme->reg_rxcs |
    RXCS_QUEUESEL_Q0 |
    RXCS_ENABLE |
    RXCS_QST);
}
