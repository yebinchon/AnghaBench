
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_SMP_IPI ;
 int smtc_send_ipi (int,int ,unsigned int) ;

__attribute__((used)) static void ssmtc_send_ipi_single(int cpu, unsigned int action)
{
 smtc_send_ipi(cpu, LINUX_SMP_IPI, action);

}
