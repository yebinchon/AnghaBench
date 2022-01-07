
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int m; int e; } ;
typedef int islpci_private ;


 int DOT11_OID_CHANNEL ;
 int EINPROGRESS ;
 int EINVAL ;
 int channel_of_freq (int) ;
 int mgt_set_request (int *,int ,int ,int*) ;
 int * netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_freq(struct net_device *ndev, struct iw_request_info *info,
   struct iw_freq *fwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 int rvalue;
 u32 c;

 if (fwrq->m < 1000)

  c = fwrq->m;
 else
  c = (fwrq->e == 1) ? channel_of_freq(fwrq->m / 100000) : 0;

 rvalue = c ? mgt_set_request(priv, DOT11_OID_CHANNEL, 0, &c) : -EINVAL;


 return (rvalue ? rvalue : -EINPROGRESS);
}
