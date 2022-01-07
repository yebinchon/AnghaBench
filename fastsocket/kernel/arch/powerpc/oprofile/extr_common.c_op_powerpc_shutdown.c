
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int release_pmc_hardware () ;

__attribute__((used)) static void op_powerpc_shutdown(void)
{
 release_pmc_hardware();
}
