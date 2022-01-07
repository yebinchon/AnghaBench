
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int reg_txcs; int pdev; } ;


 int JME_TXCS ;
 int JME_TX_DISABLE_TIMEOUT ;
 int TXCS_ENABLE ;
 int TXCS_SELECT_QUEUE0 ;
 int jeprintk (int ,char*) ;
 int jread32 (struct jme_adapter*,int ) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int mdelay (int) ;
 int rmb () ;
 int wmb () ;

__attribute__((used)) static inline void
jme_disable_tx_engine(struct jme_adapter *jme)
{
 int i;
 u32 val;




 jwrite32(jme, JME_TXCS, jme->reg_txcs | TXCS_SELECT_QUEUE0);
 wmb();

 val = jread32(jme, JME_TXCS);
 for (i = JME_TX_DISABLE_TIMEOUT ; (val & TXCS_ENABLE) && i > 0 ; --i) {
  mdelay(1);
  val = jread32(jme, JME_TXCS);
  rmb();
 }

 if (!i)
  jeprintk(jme->pdev, "Disable TX engine timeout.\n");
}
