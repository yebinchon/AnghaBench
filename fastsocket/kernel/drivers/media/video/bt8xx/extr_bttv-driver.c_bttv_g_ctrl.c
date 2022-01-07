
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int opt_coring; int opt_full_luma_range; int opt_uv_ratio; int opt_whitecrush_lower; int opt_whitecrush_upper; int opt_vcr_hack; int opt_adc_crush; int opt_automute; int opt_lumafilter; int opt_combfilter; int opt_chroma_agc; int saturation; int contrast; int hue; int bright; } ;


 int EINVAL ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_control*) ;
 int core ;
 int g_ctrl ;

__attribute__((used)) static int bttv_g_ctrl(struct file *file, void *priv,
     struct v4l2_control *c)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 switch (c->id) {
 case 142:
  c->value = btv->bright;
  break;
 case 140:
  c->value = btv->hue;
  break;
 case 141:
  c->value = btv->contrast;
  break;
 case 128:
  c->value = btv->saturation;
  break;

 case 145:
 case 143:
 case 147:
 case 146:
 case 144:
  bttv_call_all(btv, core, g_ctrl, c);
  break;

 case 137:
  c->value = btv->opt_chroma_agc;
  break;
 case 136:
  c->value = btv->opt_combfilter;
  break;
 case 133:
  c->value = btv->opt_lumafilter;
  break;
 case 138:
  c->value = btv->opt_automute;
  break;
 case 139:
  c->value = btv->opt_adc_crush;
  break;
 case 131:
  c->value = btv->opt_vcr_hack;
  break;
 case 129:
  c->value = btv->opt_whitecrush_upper;
  break;
 case 130:
  c->value = btv->opt_whitecrush_lower;
  break;
 case 132:
  c->value = btv->opt_uv_ratio;
  break;
 case 134:
  c->value = btv->opt_full_luma_range;
  break;
 case 135:
  c->value = btv->opt_coring;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
