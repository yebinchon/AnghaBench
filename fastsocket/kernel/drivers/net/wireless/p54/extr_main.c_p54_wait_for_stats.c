
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int update_stats; int stat_comp; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int ETIMEDOUT ;
 int HZ ;
 int p54_fetch_statistics (struct p54_common*) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int p54_wait_for_stats(struct ieee80211_hw *dev)
{
 struct p54_common *priv = dev->priv;
 int ret;

 priv->update_stats = 1;
 ret = p54_fetch_statistics(priv);
 if (ret)
  return ret;

 ret = wait_for_completion_interruptible_timeout(&priv->stat_comp, HZ);
 if (ret == 0)
  return -ETIMEDOUT;

 return 0;
}
