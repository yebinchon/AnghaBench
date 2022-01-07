
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int flags; } ;


 int JME_APMC ;
 int JME_APMC_EPIEN_CTRL ;
 int JME_APMC_EPIEN_CTRL_DIS ;
 int JME_APMC_PCIE_SD_EN ;
 int JME_FLAG_SHUTDOWN ;
 int JME_TIMER2 ;
 int JME_TMCSR ;
 int clear_bit (int ,int *) ;
 int jread32 (struct jme_adapter*,int ) ;
 int jwrite32f (struct jme_adapter*,int ,int) ;
 int wmb () ;

__attribute__((used)) static void
jme_stop_shutdown_timer(struct jme_adapter *jme)
{
 u32 apmc;

 jwrite32f(jme, JME_TMCSR, 0);
 jwrite32f(jme, JME_TIMER2, 0);
 clear_bit(JME_FLAG_SHUTDOWN, &jme->flags);

 apmc = jread32(jme, JME_APMC);
 apmc &= ~(JME_APMC_PCIE_SD_EN | JME_APMC_EPIEN_CTRL);
 jwrite32f(jme, JME_APMC, apmc | JME_APMC_EPIEN_CTRL_DIS);
 wmb();
 jwrite32f(jme, JME_APMC, apmc);
}
