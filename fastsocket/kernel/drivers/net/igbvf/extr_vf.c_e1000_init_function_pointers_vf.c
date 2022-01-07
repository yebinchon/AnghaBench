
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int init_params; } ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int init_params; } ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ mbx; TYPE_2__ mac; } ;


 int e1000_init_mac_params_vf ;
 int e1000_init_mbx_params_vf ;

void e1000_init_function_pointers_vf(struct e1000_hw *hw)
{
 hw->mac.ops.init_params = e1000_init_mac_params_vf;
 hw->mbx.ops.init_params = e1000_init_mbx_params_vf;
}
