
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;


 int RT_SCOPE_HOST ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int inet_confirm_addr (struct in_device*,int ,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline __be32 bond_confirm_addr(struct net_device *dev, __be32 dst, __be32 local)
{
 struct in_device *in_dev;
 __be32 addr = 0;

 rcu_read_lock();
 in_dev = __in_dev_get_rcu(dev);

 if (in_dev)
  addr = inet_confirm_addr(in_dev, dst, local, RT_SCOPE_HOST);

 rcu_read_unlock();
 return addr;
}
