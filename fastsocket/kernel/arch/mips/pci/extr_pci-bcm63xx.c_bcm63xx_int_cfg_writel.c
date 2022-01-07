
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MPI_PCICFGCTL_CFGADDR_MASK ;
 int MPI_PCICFGCTL_REG ;
 int MPI_PCICFGCTL_WRITEEN_MASK ;
 int MPI_PCICFGDATA_REG ;
 int bcm_mpi_writel (int,int ) ;

__attribute__((used)) static void bcm63xx_int_cfg_writel(u32 val, u32 reg)
{
 u32 tmp;

 tmp = reg & MPI_PCICFGCTL_CFGADDR_MASK;
 tmp |= MPI_PCICFGCTL_WRITEEN_MASK;
 bcm_mpi_writel(tmp, MPI_PCICFGCTL_REG);
 bcm_mpi_writel(val, MPI_PCICFGDATA_REG);
}
