
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int dummy; } ;


 int JME_TMCSR ;
 int TMCSR_SWIT ;
 int jwrite32 (struct jme_adapter*,int ,int ) ;

__attribute__((used)) static void
jme_reset_link(struct jme_adapter *jme)
{
 jwrite32(jme, JME_TMCSR, TMCSR_SWIT);
}
