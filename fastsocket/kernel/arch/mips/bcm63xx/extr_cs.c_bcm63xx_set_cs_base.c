
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int MPI_CSBASE_BASE_MASK ;
 int MPI_CSBASE_REG (unsigned int) ;
 int MPI_CSBASE_SIZE_SHIFT ;
 int bcm63xx_cs_lock ;
 int bcm_mpi_writel (int,int ) ;
 int ilog2 (int) ;
 int is_valid_cs (unsigned int) ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int bcm63xx_set_cs_base(unsigned int cs, u32 base, unsigned int size)
{
 unsigned long flags;
 u32 val;

 if (!is_valid_cs(cs))
  return -EINVAL;


 if (size != roundup_pow_of_two(size))
  return -EINVAL;

 if (size < 8 * 1024 || size > 256 * 1024 * 1024)
  return -EINVAL;

 val = (base & MPI_CSBASE_BASE_MASK);

 val |= (ilog2(size) - ilog2(8 * 1024)) << MPI_CSBASE_SIZE_SHIFT;

 spin_lock_irqsave(&bcm63xx_cs_lock, flags);
 bcm_mpi_writel(val, MPI_CSBASE_REG(cs));
 spin_unlock_irqrestore(&bcm63xx_cs_lock, flags);

 return 0;
}
