
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int check_kr2_recovery_cnt; int link_attr_sync; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_reg_set {int member_2; int val; int reg; int devad; int member_1; int const member_0; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int ARRAY_SIZE (struct bnx2x_reg_set*) ;
 int CHECK_KR2_RECOVERY_CNT ;
 int DP (int ,char*) ;
 int LINK_ATTR_SYNC_KR2_ENABLE ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int bnx2x_update_link_attr (struct link_params*,int ) ;

__attribute__((used)) static void bnx2x_disable_kr2(struct link_params *params,
         struct link_vars *vars,
         struct bnx2x_phy *phy)
{
 struct bnx2x *bp = params->bp;
 int i;
 static struct bnx2x_reg_set reg_set[] = {

  {143, 136, 0x7690},
  {143, 134, 0xe647},
  {143, 135, 0xc4f0},
  {143, 133, 0x7690},
  {143, 137, 0xe647},
  {143, 138, 0xc4f0},
  {143, 139, 0x000c},
  {143, 141, 0x6000},
  {143, 140, 0x0000},
  {143, 142, 0x0002},
  {143, 130, 0x0000},
  {143, 129, 0x0af7},
  {143, 128, 0x0af7},
  {143, 132, 0x0002},
  {143, 131, 0x0000}
 };
 DP(NETIF_MSG_LINK, "Disabling 20G-KR2\n");

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  bnx2x_cl45_write(bp, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);
 vars->link_attr_sync &= ~LINK_ATTR_SYNC_KR2_ENABLE;
 bnx2x_update_link_attr(params, vars->link_attr_sync);

 vars->check_kr2_recovery_cnt = CHECK_KR2_RECOVERY_CNT;
}
