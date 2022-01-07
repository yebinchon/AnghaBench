
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_els_lesb {int dummy; } ;


 int __fcoe_get_lesb (struct fc_lport*,struct fc_els_lesb*,struct net_device*) ;
 struct net_device* fcoe_get_netdev (struct fc_lport*) ;

void fcoe_get_lesb(struct fc_lport *lport,
    struct fc_els_lesb *fc_lesb)
{
 struct net_device *netdev = fcoe_get_netdev(lport);

 __fcoe_get_lesb(lport, fc_lesb, netdev);
}
