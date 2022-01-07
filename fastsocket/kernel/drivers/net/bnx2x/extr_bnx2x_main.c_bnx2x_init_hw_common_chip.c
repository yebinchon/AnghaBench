
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BP_NOMCP (struct bnx2x*) ;
 int bnx2x__common_init_phy (struct bnx2x*) ;
 int bnx2x_init_hw_common (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_init_hw_common_chip(struct bnx2x *bp)
{
 int rc = bnx2x_init_hw_common(bp);

 if (rc)
  return rc;


 if (!BP_NOMCP(bp))
  bnx2x__common_init_phy(bp);

 return 0;
}
