
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isci_phy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 TYPE_2__* phy_to_host (struct isci_phy*) ;

__attribute__((used)) static struct device *sciphy_to_dev(struct isci_phy *iphy)
{
 return &phy_to_host(iphy)->pdev->dev;
}
