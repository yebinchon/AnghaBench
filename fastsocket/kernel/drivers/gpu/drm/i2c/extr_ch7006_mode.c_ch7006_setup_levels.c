
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct ch7006_tv_norm_info {int black_level; } ;
struct TYPE_2__ {int * regs; } ;
struct ch7006_priv {size_t norm; int brightness; TYPE_1__ state; } ;


 size_t CH7006_BLACK_LEVEL ;
 int CH7006_BLACK_LEVEL_0 ;
 size_t CH7006_INPUT_FORMAT ;
 int CH7006_INPUT_FORMAT_DAC_GAIN ;
 int bitf (int ,int) ;
 int ch7006_dbg (struct i2c_client*,char*,int) ;
 struct ch7006_tv_norm_info* ch7006_tv_norms ;
 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int fixed1 ;
 int interpolate (int,int,int,int ) ;
 int round_fixed (int) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

void ch7006_setup_levels(struct drm_encoder *encoder)
{
 struct i2c_client *client = drm_i2c_encoder_get_client(encoder);
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 uint8_t *regs = priv->state.regs;
 struct ch7006_tv_norm_info *norm = &ch7006_tv_norms[priv->norm];
 int gain;
 int black_level;



 if (norm->black_level < 339*fixed1/1000) {
  gain = 76;

  regs[CH7006_INPUT_FORMAT] |= CH7006_INPUT_FORMAT_DAC_GAIN;
 } else {
  gain = 71;

  regs[CH7006_INPUT_FORMAT] &= ~CH7006_INPUT_FORMAT_DAC_GAIN;
 }

 black_level = round_fixed(norm->black_level*26625)/gain;


 black_level = interpolate(90, black_level, 208, priv->brightness);

 regs[CH7006_BLACK_LEVEL] = bitf(CH7006_BLACK_LEVEL_0, black_level);

 ch7006_dbg(client, "black level: %d\n", black_level);
}
