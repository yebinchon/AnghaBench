
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_COLD_SHIFT ;
 int E1000_COLLISION_DISTANCE ;
 int E1000_TCTL ;
 int E1000_TCTL_COLD ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igb_config_collision_dist(struct e1000_hw *hw)
{
 u32 tctl;

 tctl = rd32(E1000_TCTL);

 tctl &= ~E1000_TCTL_COLD;
 tctl |= E1000_COLLISION_DISTANCE << E1000_COLD_SHIFT;

 wr32(E1000_TCTL, tctl);
 wrfl();
}
