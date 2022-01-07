
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int R8169_REGS_SIZE ;

__attribute__((used)) static int rtl8169_get_regs_len(struct net_device *dev)
{
 return R8169_REGS_SIZE;
}
