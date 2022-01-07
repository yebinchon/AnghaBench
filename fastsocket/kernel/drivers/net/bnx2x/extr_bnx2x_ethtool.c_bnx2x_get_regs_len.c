
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dump_header {int dummy; } ;
struct bnx2x {int dummy; } ;


 int __bnx2x_get_regs_len (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_regs_len(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);
 int regdump_len = 0;

 regdump_len = __bnx2x_get_regs_len(bp);
 regdump_len *= 4;
 regdump_len += sizeof(struct dump_header);

 return regdump_len;
}
