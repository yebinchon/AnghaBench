
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct radeon_connector {int dummy; } ;


 int radeon_dp_aux_native_write (struct radeon_connector*,int ,int *,int,int ) ;

__attribute__((used)) static void radeon_write_dpcd_reg(struct radeon_connector *radeon_connector,
     u16 reg, u8 val)
{
 radeon_dp_aux_native_write(radeon_connector, reg, &val, 1, 0);
}
