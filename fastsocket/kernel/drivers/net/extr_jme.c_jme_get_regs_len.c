
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int JME_REG_LEN ;

__attribute__((used)) static int
jme_get_regs_len(struct net_device *netdev)
{
 return JME_REG_LEN;
}
