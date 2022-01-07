
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int AMD8111E_REG_DUMP_LEN ;

__attribute__((used)) static int amd8111e_get_regs_len(struct net_device *dev)
{
 return AMD8111E_REG_DUMP_LEN;
}
