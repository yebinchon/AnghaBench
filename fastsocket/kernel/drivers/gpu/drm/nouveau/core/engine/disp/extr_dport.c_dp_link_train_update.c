
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dp_state {int stat; int aux; } ;


 int DBG (char*,int,int ) ;
 int DPCD_LS02 ;
 int nv_rdaux (int ,int ,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static int
dp_link_train_update(struct dp_state *dp, u32 delay)
{
 int ret;

 udelay(delay);

 ret = nv_rdaux(dp->aux, DPCD_LS02, dp->stat, 6);
 if (ret)
  return ret;

 DBG("status %*ph\n", 6, dp->stat);
 return 0;
}
