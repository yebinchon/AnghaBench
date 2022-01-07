
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BCMCPU_IS_6338 () ;
 scalar_t__ BCMCPU_IS_6345 () ;
 scalar_t__ BCMCPU_IS_6348 () ;
 scalar_t__ BCMCPU_IS_6358 () ;
 int DDR_DMIPSPLLCFG_REG ;
 unsigned int DMIPSPLLCFG_M1_MASK ;
 unsigned int DMIPSPLLCFG_M1_SHIFT ;
 unsigned int DMIPSPLLCFG_N1_MASK ;
 unsigned int DMIPSPLLCFG_N1_SHIFT ;
 unsigned int DMIPSPLLCFG_N2_MASK ;
 unsigned int DMIPSPLLCFG_N2_SHIFT ;
 unsigned int MIPSPLLCTL_M1CPU_MASK ;
 unsigned int MIPSPLLCTL_M1CPU_SHIFT ;
 unsigned int MIPSPLLCTL_N1_MASK ;
 unsigned int MIPSPLLCTL_N1_SHIFT ;
 unsigned int MIPSPLLCTL_N2_MASK ;
 unsigned int MIPSPLLCTL_N2_SHIFT ;
 int PERF_MIPSPLLCTL_REG ;
 unsigned int bcm_ddr_readl (int ) ;
 unsigned int bcm_perf_readl (int ) ;

__attribute__((used)) static unsigned int detect_cpu_clock(void)
{
 unsigned int tmp, n1 = 0, n2 = 0, m1 = 0;


 if (BCMCPU_IS_6338())
  return 240000000;


 if (BCMCPU_IS_6345())
  return 140000000;




 if (BCMCPU_IS_6348()) {

  tmp = bcm_perf_readl(PERF_MIPSPLLCTL_REG);
  n1 = (tmp & MIPSPLLCTL_N1_MASK) >> MIPSPLLCTL_N1_SHIFT;
  n2 = (tmp & MIPSPLLCTL_N2_MASK) >> MIPSPLLCTL_N2_SHIFT;
  m1 = (tmp & MIPSPLLCTL_M1CPU_MASK) >> MIPSPLLCTL_M1CPU_SHIFT;
  n1 += 1;
  n2 += 2;
  m1 += 1;
 }

 if (BCMCPU_IS_6358()) {

  tmp = bcm_ddr_readl(DDR_DMIPSPLLCFG_REG);
  n1 = (tmp & DMIPSPLLCFG_N1_MASK) >> DMIPSPLLCFG_N1_SHIFT;
  n2 = (tmp & DMIPSPLLCFG_N2_MASK) >> DMIPSPLLCFG_N2_SHIFT;
  m1 = (tmp & DMIPSPLLCFG_M1_MASK) >> DMIPSPLLCFG_M1_SHIFT;
 }

 return (16 * 1000000 * n1 * n2) / m1;
}
