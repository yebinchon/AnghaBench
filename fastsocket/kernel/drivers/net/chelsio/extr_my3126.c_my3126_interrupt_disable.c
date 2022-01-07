
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int phy_update; } ;


 int cancel_rearming_delayed_work (int *) ;

__attribute__((used)) static int my3126_interrupt_disable(struct cphy *cphy)
{
 cancel_rearming_delayed_work(&cphy->phy_update);
 return 0;
}
