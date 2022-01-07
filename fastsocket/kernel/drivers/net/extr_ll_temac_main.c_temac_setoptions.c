
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_option {int opt; int m_or; int reg; } ;
struct temac_local {int options; int indirect_mutex; } ;
struct net_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int temac_indirect_in32 (struct temac_local*,int ) ;
 int temac_indirect_out32 (struct temac_local*,int ,int) ;
 struct temac_option* temac_options ;

__attribute__((used)) static u32 temac_setoptions(struct net_device *ndev, u32 options)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct temac_option *tp = &temac_options[0];
 int reg;

 mutex_lock(&lp->indirect_mutex);
 while (tp->opt) {
  reg = temac_indirect_in32(lp, tp->reg) & ~tp->m_or;
  if (options & tp->opt)
   reg |= tp->m_or;
  temac_indirect_out32(lp, tp->reg, reg);
  tp++;
 }
 lp->options |= options;
 mutex_unlock(&lp->indirect_mutex);

 return (0);
}
