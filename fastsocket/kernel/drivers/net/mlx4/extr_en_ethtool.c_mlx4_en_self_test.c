
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;


 int mlx4_en_ex_selftest (struct net_device*,int *,int *) ;

__attribute__((used)) static void mlx4_en_self_test(struct net_device *dev,
         struct ethtool_test *etest, u64 *buf)
{
 mlx4_en_ex_selftest(dev, &etest->flags, buf);
}
