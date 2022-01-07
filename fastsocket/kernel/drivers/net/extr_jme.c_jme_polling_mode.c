
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int dummy; } ;


 int PCC_OFF ;
 int jme_set_rx_pcc (struct jme_adapter*,int ) ;

__attribute__((used)) static inline void
jme_polling_mode(struct jme_adapter *jme)
{
 jme_set_rx_pcc(jme, PCC_OFF);
}
