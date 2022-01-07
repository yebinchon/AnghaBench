
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_stmmacphy_data {int bus_id; } ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static int stmmacphy_dvr_probe(struct platform_device *pdev)
{
 struct plat_stmmacphy_data *plat_dat;
 plat_dat = (struct plat_stmmacphy_data *)((pdev->dev).platform_data);

 pr_debug("stmmacphy_dvr_probe: added phy for bus %d\n",
        plat_dat->bus_id);

 return 0;
}
