
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {TYPE_1__* attr; } ;
typedef int mac_t ;
struct TYPE_2__ {int mac; } ;



mac_t
bfa_nw_ioc_get_mac(struct bfa_ioc *ioc)
{
 return ioc->attr->mac;
}
