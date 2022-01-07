
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int dummy; } ;


 int kfree (struct phy_shim_info*) ;

void wlc_phy_shim_detach(struct phy_shim_info *physhim)
{
 kfree(physhim);
}
