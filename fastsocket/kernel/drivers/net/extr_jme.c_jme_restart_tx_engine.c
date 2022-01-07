
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int reg_txcs; } ;


 int JME_TXCS ;
 int TXCS_ENABLE ;
 int TXCS_SELECT_QUEUE0 ;
 int jwrite32 (struct jme_adapter*,int ,int) ;

__attribute__((used)) static inline void
jme_restart_tx_engine(struct jme_adapter *jme)
{



 jwrite32(jme, JME_TXCS, jme->reg_txcs |
    TXCS_SELECT_QUEUE0 |
    TXCS_ENABLE);
}
