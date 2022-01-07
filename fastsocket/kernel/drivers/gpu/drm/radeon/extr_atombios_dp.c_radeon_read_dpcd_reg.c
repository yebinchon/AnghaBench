
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct radeon_connector {int dummy; } ;


 int radeon_dp_aux_native_read (struct radeon_connector*,int ,int *,int,int ) ;

__attribute__((used)) static u8 radeon_read_dpcd_reg(struct radeon_connector *radeon_connector,
          u16 reg)
{
 u8 val = 0;

 radeon_dp_aux_native_read(radeon_connector, reg, &val, 1, 0);

 return val;
}
