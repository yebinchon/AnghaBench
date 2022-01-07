
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_MBOX_SETX (int) ;
 int cpu_logical_map (int) ;
 int cvmx_write_csr (int ,unsigned int) ;

void octeon_send_ipi_single(int cpu, unsigned int action)
{
 int coreid = cpu_logical_map(cpu);




 cvmx_write_csr(CVMX_CIU_MBOX_SETX(coreid), action);
}
