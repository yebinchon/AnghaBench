
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int i2c_addr; int cd_mux_state; int cd_mux_control_pin; int cd_valid; } ;
struct radeon_connector {TYPE_1__ router; int router_bus; } ;


 int radeon_i2c_get_byte (int ,int ,int,int *) ;
 int radeon_i2c_put_byte (int ,int ,int,int ) ;

void radeon_router_select_cd_port(struct radeon_connector *radeon_connector)
{
 u8 val;

 if (!radeon_connector->router.cd_valid)
  return;

 if (!radeon_connector->router_bus)
  return;

 radeon_i2c_get_byte(radeon_connector->router_bus,
       radeon_connector->router.i2c_addr,
       0x3, &val);
 val &= ~radeon_connector->router.cd_mux_control_pin;
 radeon_i2c_put_byte(radeon_connector->router_bus,
       radeon_connector->router.i2c_addr,
       0x3, val);
 radeon_i2c_get_byte(radeon_connector->router_bus,
       radeon_connector->router.i2c_addr,
       0x1, &val);
 val &= ~radeon_connector->router.cd_mux_control_pin;
 val |= radeon_connector->router.cd_mux_state;
 radeon_i2c_put_byte(radeon_connector->router_bus,
       radeon_connector->router.i2c_addr,
       0x1, val);
}
