
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_WDOGX (int ) ;
 int cvmx_get_core_num () ;
 int cvmx_write_csr (int ,int ) ;
 int mb () ;
 scalar_t__ octeon_is_simulation () ;

__attribute__((used)) static void octeon_kill_core(void *arg)
{
 mb();
 if (octeon_is_simulation()) {

  cvmx_write_csr(CVMX_CIU_WDOGX(cvmx_get_core_num()), 0);

  asm volatile ("sync\nbreak");
 }
}
