
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EBI_CSR1 ;
 int EBI_LOCK ;
 int INTEGRATOR_EBI_WRITE_ENABLE ;
 int INTEGRATOR_SC_CTRL_nFLVPPEN ;
 int INTEGRATOR_SC_CTRL_nFLWP ;
 int SC_CTRLC ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void ap_flash_exit(void)
{
 u32 tmp;

 writel(INTEGRATOR_SC_CTRL_nFLVPPEN | INTEGRATOR_SC_CTRL_nFLWP, SC_CTRLC);

 tmp = readl(EBI_CSR1) & ~INTEGRATOR_EBI_WRITE_ENABLE;
 writel(tmp, EBI_CSR1);

 if (readl(EBI_CSR1) & INTEGRATOR_EBI_WRITE_ENABLE) {
  writel(0xa05f, EBI_LOCK);
  writel(tmp, EBI_CSR1);
  writel(0, EBI_LOCK);
 }
}
