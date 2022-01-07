
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {int phytype; } ;



u16 brcms_c_get_phy_type(struct brcms_c_info *wlc, int phyidx)
{
 return wlc->band->phytype;
}
