
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_ext_tmds {int dvo_chip; int slave_addr; int i2c_bus; } ;
struct radeon_encoder {struct radeon_encoder_ext_tmds* enc_priv; } ;
struct drm_encoder {int dummy; } ;




 int radeon_i2c_put_byte (int ,int ,int,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void radeon_external_tmds_setup(struct drm_encoder *encoder)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_ext_tmds *tmds = radeon_encoder->enc_priv;

 if (!tmds)
  return;

 switch (tmds->dvo_chip) {
 case 128:

  radeon_i2c_put_byte(tmds->i2c_bus,
        tmds->slave_addr,
        0x08, 0x30);
  radeon_i2c_put_byte(tmds->i2c_bus,
           tmds->slave_addr,
           0x09, 0x00);
  radeon_i2c_put_byte(tmds->i2c_bus,
        tmds->slave_addr,
        0x0a, 0x90);
  radeon_i2c_put_byte(tmds->i2c_bus,
        tmds->slave_addr,
        0x0c, 0x89);
  radeon_i2c_put_byte(tmds->i2c_bus,
           tmds->slave_addr,
           0x08, 0x3b);
  break;
 case 129:
  break;
 default:
  break;
 }

}
