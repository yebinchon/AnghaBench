
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth {int dummy; } ;
struct net_device {int dummy; } ;



__attribute__((used)) static int
uec_get_regs_len(struct net_device *netdev)
{
 return sizeof(struct ucc_geth);
}
