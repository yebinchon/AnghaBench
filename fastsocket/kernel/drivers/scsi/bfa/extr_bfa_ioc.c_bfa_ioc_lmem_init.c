
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pss_ctl_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 int PSS_LMEM_INIT_TIME ;
 int WARN_ON (int) ;
 int __PSS_I2C_CLK_DIV (unsigned long) ;
 int __PSS_LMEM_INIT_DONE ;
 int __PSS_LMEM_INIT_EN ;
 int __PSS_LMEM_RESET ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_lmem_init(struct bfa_ioc_s *ioc)
{
 u32 pss_ctl;
 int i;


 pss_ctl = readl(ioc->ioc_regs.pss_ctl_reg);
 pss_ctl &= ~__PSS_LMEM_RESET;
 pss_ctl |= __PSS_LMEM_INIT_EN;




 pss_ctl |= __PSS_I2C_CLK_DIV(3UL);
 writel(pss_ctl, ioc->ioc_regs.pss_ctl_reg);




 i = 0;
 do {
  pss_ctl = readl(ioc->ioc_regs.pss_ctl_reg);
  i++;
 } while (!(pss_ctl & __PSS_LMEM_INIT_DONE) && (i < 10000));





 WARN_ON(!(pss_ctl & __PSS_LMEM_INIT_DONE));
 bfa_trc(ioc, pss_ctl);

 pss_ctl &= ~(__PSS_LMEM_INIT_DONE | __PSS_LMEM_INIT_EN);
 writel(pss_ctl, ioc->ioc_regs.pss_ctl_reg);
}
