
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MPI_PCICFGCTL_CFGADDR_MASK ;
 int MPI_PCICFGCTL_REG ;
 int MPI_PCICFGCTL_WRITEEN_MASK ;
 int MPI_PCICFGDATA_REG ;
 int bcm_mpi_readl (int ) ;
 int bcm_mpi_writel (int,int ) ;
 int iob () ;

__attribute__((used)) static u32 bcm63xx_int_cfg_readl(u32 reg)
{
 u32 tmp;

 tmp = reg & MPI_PCICFGCTL_CFGADDR_MASK;
 tmp |= MPI_PCICFGCTL_WRITEEN_MASK;
 bcm_mpi_writel(tmp, MPI_PCICFGCTL_REG);
 iob();
 return bcm_mpi_readl(MPI_PCICFGDATA_REG);
}
