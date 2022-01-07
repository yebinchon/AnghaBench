
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns83820 {int dummy; } ;
struct net_device {int dummy; } ;


 struct ns83820* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct ns83820 *PRIV(struct net_device *dev)
{
 return netdev_priv(dev);
}
