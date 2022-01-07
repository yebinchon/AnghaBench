
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;


 int ioc3_r_eier () ;
 int ioc3_w_eier (int ) ;
 int ioc3_w_emcr (int ) ;

__attribute__((used)) static inline void ioc3_stop(struct ioc3_private *ip)
{
 struct ioc3 *ioc3 = ip->regs;

 ioc3_w_emcr(0);
 ioc3_w_eier(0);
 (void) ioc3_r_eier();
}
