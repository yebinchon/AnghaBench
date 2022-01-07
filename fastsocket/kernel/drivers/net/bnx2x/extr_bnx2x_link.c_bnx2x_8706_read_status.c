
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int dummy; } ;
struct link_params {int dummy; } ;
struct bnx2x_phy {int dummy; } ;


 int bnx2x_8706_8726_read_status (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;

__attribute__((used)) static int bnx2x_8706_read_status(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars)
{
 return bnx2x_8706_8726_read_status(phy, params, vars);
}
