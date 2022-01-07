
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ full_duplex; } ;
struct ioc3_private {int emcr; TYPE_1__ mii; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;


 int EMCR_DUPLEX ;
 int ETCSR_FD ;
 int ETCSR_HD ;
 int ioc3_w_emcr (int ) ;
 int ioc3_w_etcsr (int ) ;

__attribute__((used)) static inline void ioc3_setup_duplex(struct ioc3_private *ip)
{
 struct ioc3 *ioc3 = ip->regs;

 if (ip->mii.full_duplex) {
  ioc3_w_etcsr(ETCSR_FD);
  ip->emcr |= EMCR_DUPLEX;
 } else {
  ioc3_w_etcsr(ETCSR_HD);
  ip->emcr &= ~EMCR_DUPLEX;
 }
 ioc3_w_emcr(ip->emcr);
}
