
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int OpenCommandIssued; } ;
struct net_device {int dummy; } ;


 int OC_OPEN ;
 struct net_local* netdev_priv (struct net_device*) ;
 int tms380tr_exec_cmd (struct net_device*,int ) ;

__attribute__((used)) static void tms380tr_open_adapter(struct net_device *dev)
{
 struct net_local *tp = netdev_priv(dev);

 if(tp->OpenCommandIssued)
  return;

 tp->OpenCommandIssued = 1;
 tms380tr_exec_cmd(dev, OC_OPEN);

 return;
}
