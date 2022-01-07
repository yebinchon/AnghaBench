
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int vtotal; int hdisplay; int vdisplay; } ;
struct ch7006_tv_norm_info {int vtotal; int hvirtual; int vdisplay; int voffset; } ;
struct ch7006_state {int* regs; } ;
struct ch7006_priv {size_t norm; int hmargin; int vmargin; int contrast; int flicker; struct ch7006_mode* mode; struct ch7006_state state; } ;
struct ch7006_mode {int enc_hdisp; int enc_vdisp; struct drm_display_mode mode; } ;


 size_t CH7006_CONTRAST ;
 int CH7006_CONTRAST_0 ;
 size_t CH7006_FFILTER ;
 int CH7006_FFILTER_CHROMA ;
 int CH7006_FFILTER_LUMA ;
 int CH7006_FFILTER_TEXT ;
 int CH7006_HPOS ;
 int CH7006_POV ;
 int CH7006_VPOS ;
 int HPOS_8 ;
 int VPOS_8 ;
 int bitf (int ,int) ;
 int ch7006_dbg (struct i2c_client*,char*,int,int) ;
 struct ch7006_tv_norm_info* ch7006_tv_norms ;
 int do_div (int,int) ;
 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int fixed1 ;
 int interpolate (int ,int,int,int ) ;
 int max (int ,int) ;
 int round_fixed (int) ;
 int setbitf (struct ch7006_state*,int ,int ,int) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

void ch7006_setup_properties(struct drm_encoder *encoder)
{
 struct i2c_client *client = drm_i2c_encoder_get_client(encoder);
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 struct ch7006_state *state = &priv->state;
 struct ch7006_tv_norm_info *norm = &ch7006_tv_norms[priv->norm];
 struct ch7006_mode *ch_mode = priv->mode;
 struct drm_display_mode *mode = &ch_mode->mode;
 uint8_t *regs = state->regs;
 int flicker, contrast, hpos, vpos;
 uint64_t scale, aspect;

 flicker = interpolate(0, 2, 3, priv->flicker);
 regs[CH7006_FFILTER] = bitf(CH7006_FFILTER_TEXT, flicker) |
  bitf(CH7006_FFILTER_LUMA, flicker) |
  bitf(CH7006_FFILTER_CHROMA, 1);

 contrast = interpolate(0, 5, 7, priv->contrast);
 regs[CH7006_CONTRAST] = bitf(CH7006_CONTRAST_0, contrast);

 scale = norm->vtotal*fixed1;
 do_div(scale, mode->vtotal);

 aspect = ch_mode->enc_hdisp*fixed1;
 do_div(aspect, ch_mode->enc_vdisp);

 hpos = round_fixed((norm->hvirtual * aspect - mode->hdisplay * scale)
      * priv->hmargin * mode->vtotal) / norm->vtotal / 100 / 4;

 setbitf(state, CH7006_POV, HPOS_8, hpos);
 setbitf(state, CH7006_HPOS, 0, hpos);

 vpos = max(0, norm->vdisplay - round_fixed(mode->vdisplay*scale)
     + norm->voffset) * priv->vmargin / 100 / 2;

 setbitf(state, CH7006_POV, VPOS_8, vpos);
 setbitf(state, CH7006_VPOS, 0, vpos);

 ch7006_dbg(client, "hpos: %d, vpos: %d\n", hpos, vpos);
}
