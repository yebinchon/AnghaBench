
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tun_struct {int debug; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 tun_get_msglevel(struct net_device *dev)
{




 return -EOPNOTSUPP;

}
