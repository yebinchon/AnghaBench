
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_table {int dummy; } ;


 int mark_tsc_unstable (char*) ;
 int setup_summit () ;
 int strncmp (char*,char*,int) ;
 int use_cyclone ;

__attribute__((used)) static int summit_mps_oem_check(struct mpc_table *mpc, char *oem,
  char *productid)
{
 if (!strncmp(oem, "IBM ENSW", 8) &&
   (!strncmp(productid, "VIGIL SMP", 9)
    || !strncmp(productid, "EXA", 3)
    || !strncmp(productid, "RUTHLESS SMP", 12))){
  mark_tsc_unstable("Summit based system");
  use_cyclone = 1;
  setup_summit();
  return 1;
 }
 return 0;
}
