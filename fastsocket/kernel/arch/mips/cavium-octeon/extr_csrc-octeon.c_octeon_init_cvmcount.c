
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_IPD_CLK_COUNT ;
 int cvmx_read_csr (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int write_c0_cvmcount (int ) ;

void octeon_init_cvmcount(void)
{
 unsigned long flags;
 unsigned loops = 2;


 asm("" : "+r" (loops));

 local_irq_save(flags);




 while (loops--)
  write_c0_cvmcount(cvmx_read_csr(CVMX_IPD_CLK_COUNT));
 local_irq_restore(flags);
}
