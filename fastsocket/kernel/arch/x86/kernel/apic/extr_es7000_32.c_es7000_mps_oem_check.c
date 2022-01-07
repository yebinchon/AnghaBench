
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_table {scalar_t__ oemptr; } ;
struct mpc_oemtable {int dummy; } ;


 int es7000_apic_is_cluster () ;
 int es7000_mps_ret ;
 int parse_unisys_oem (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int es7000_mps_oem_check(struct mpc_table *mpc, char *oem,
  char *productid)
{
 int ret = 0;

 if (mpc->oemptr) {
  struct mpc_oemtable *oem_table =
   (struct mpc_oemtable *)mpc->oemptr;

  if (!strncmp(oem, "UNISYS", 6))
   ret = parse_unisys_oem((char *)oem_table);
 }

 es7000_mps_ret = ret;

 return ret && !es7000_apic_is_cluster();
}
