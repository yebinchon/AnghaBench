
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;


 int CHECK_NPP () ;
 int MDRW (int ) ;

__attribute__((used)) static void write_mdr(struct s_smc *smc, u_long val)
{
 CHECK_NPP() ;
 MDRW(val) ;
}
