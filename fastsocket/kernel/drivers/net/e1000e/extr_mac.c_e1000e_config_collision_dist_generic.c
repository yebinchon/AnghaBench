
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_COLD_SHIFT ;
 int E1000_COLLISION_DISTANCE ;
 int E1000_TCTL_COLD ;
 int TCTL ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

void e1000e_config_collision_dist_generic(struct e1000_hw *hw)
{
 u32 tctl;

 tctl = er32(TCTL);

 tctl &= ~E1000_TCTL_COLD;
 tctl |= E1000_COLLISION_DISTANCE << E1000_COLD_SHIFT;

 ew32(TCTL, tctl);
 e1e_flush();
}
