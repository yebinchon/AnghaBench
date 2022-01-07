
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {unsigned short CMDqueue; } ;
struct net_device {int dummy; } ;


 struct net_local* netdev_priv (struct net_device*) ;
 int tms380tr_chk_outstanding_cmds (struct net_device*) ;

__attribute__((used)) static void tms380tr_exec_cmd(struct net_device *dev, unsigned short Command)
{
 struct net_local *tp = netdev_priv(dev);

 tp->CMDqueue |= Command;
 tms380tr_chk_outstanding_cmds(dev);

 return;
}
