
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int SK_UNUSED (struct s_smc*) ;

__attribute__((used)) static int phy_index(struct s_smc *smc, int phy)
{
 SK_UNUSED(smc) ;
 return(phy+1);
}
