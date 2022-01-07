
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_CMCP_VECTOR ;
 int IA64_IPI_DM_INT ;
 int cpu_online_map ;
 int first_cpu (int ) ;
 int platform_send_ipi (int ,int ,int ,int ) ;

__attribute__((used)) static void
ia64_mca_cmc_poll (unsigned long dummy)
{

 platform_send_ipi(first_cpu(cpu_online_map), IA64_CMCP_VECTOR, IA64_IPI_DM_INT, 0);
}
