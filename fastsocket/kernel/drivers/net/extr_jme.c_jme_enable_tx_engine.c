
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_adapter {int tx_ring_size; int reg_txcs; TYPE_1__* txring; } ;
typedef int __u64 ;
struct TYPE_2__ {scalar_t__ dma; } ;


 int JME_TXCS ;
 int JME_TXDBA_HI ;
 int JME_TXDBA_LO ;
 int JME_TXNDA ;
 int JME_TXQDC ;
 int TXCS_DEFAULT ;
 int TXCS_ENABLE ;
 int TXCS_SELECT_QUEUE0 ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static inline void
jme_enable_tx_engine(struct jme_adapter *jme)
{



 jwrite32(jme, JME_TXCS, TXCS_DEFAULT | TXCS_SELECT_QUEUE0);
 wmb();




 jwrite32(jme, JME_TXDBA_LO, (__u64)jme->txring[0].dma & 0xFFFFFFFFUL);
 jwrite32(jme, JME_TXDBA_HI, (__u64)(jme->txring[0].dma) >> 32);
 jwrite32(jme, JME_TXNDA, (__u64)jme->txring[0].dma & 0xFFFFFFFFUL);




 jwrite32(jme, JME_TXQDC, jme->tx_ring_size);




 wmb();
 jwrite32(jme, JME_TXCS, jme->reg_txcs |
    TXCS_SELECT_QUEUE0 |
    TXCS_ENABLE);

}
