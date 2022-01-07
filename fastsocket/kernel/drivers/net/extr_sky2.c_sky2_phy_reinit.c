
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int phy_lock; int port; int hw; } ;


 int sky2_phy_init (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sky2_phy_reinit(struct sky2_port *sky2)
{
 spin_lock_bh(&sky2->phy_lock);
 sky2_phy_init(sky2->hw, sky2->port);
 spin_unlock_bh(&sky2->phy_lock);
}
