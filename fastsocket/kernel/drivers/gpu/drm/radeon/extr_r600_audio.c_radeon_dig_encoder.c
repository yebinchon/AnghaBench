
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int encoder_id; } ;
struct drm_encoder {int dummy; } ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static bool radeon_dig_encoder(struct drm_encoder *encoder)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 switch (radeon_encoder->encoder_id) {
 case 133:
 case 131:
 case 134:
 case 132:
 case 137:
 case 136:
 case 138:
 case 130:
 case 135:
 case 129:
 case 128:
  return 1;
 }
 return 0;
}
