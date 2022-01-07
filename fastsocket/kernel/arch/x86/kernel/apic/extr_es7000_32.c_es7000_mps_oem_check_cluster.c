
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_table {int dummy; } ;


 scalar_t__ es7000_apic_is_cluster () ;
 int es7000_mps_ret ;

__attribute__((used)) static int es7000_mps_oem_check_cluster(struct mpc_table *mpc, char *oem,
  char *productid)
{
 int ret = es7000_mps_ret;

 return ret && es7000_apic_is_cluster();
}
