
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct bttv_fh {int prio; struct bttv* btv; } ;
struct bttv {int opt_chroma_agc; int opt_combfilter; int opt_lumafilter; int opt_automute; int opt_adc_crush; int opt_vcr_hack; int opt_whitecrush_upper; int opt_whitecrush_lower; int opt_uv_ratio; int saturation; int opt_full_luma_range; int opt_coring; int (* volume_gpio ) (struct bttv*,int) ;int prio; } ;


 int BT848_ADC ;
 int BT848_ADC_CRUSH ;
 int BT848_ADC_RESERVED ;
 int BT848_CONTROL_LDEC ;
 int BT848_E_CONTROL ;
 int BT848_E_SCLOOP ;
 int BT848_OFORM ;
 int BT848_OFORM_CORE32 ;
 int BT848_OFORM_RANGE ;
 int BT848_O_CONTROL ;
 int BT848_O_SCLOOP ;
 int BT848_SCLOOP_CAGC ;
 int BT848_WC_DOWN ;
 int BT848_WC_UP ;
 int EINVAL ;
 int audio_mute (struct bttv*,int) ;
 int bt848_bright (struct bttv*,int) ;
 int bt848_contrast (struct bttv*,int) ;
 int bt848_hue (struct bttv*,int) ;
 int bt848_sat (struct bttv*,int) ;
 int btand (int ,int ) ;
 int btaor (int,int ,int ) ;
 int btor (int ,int ) ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_control*) ;
 int btwrite (int,int ) ;
 int core ;
 int s_ctrl ;
 int stub1 (struct bttv*,int) ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int bttv_s_ctrl(struct file *file, void *f,
     struct v4l2_control *c)
{
 int err;
 int val;
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 err = v4l2_prio_check(&btv->prio, fh->prio);
 if (0 != err)
  return err;

 switch (c->id) {
 case 142:
  bt848_bright(btv, c->value);
  break;
 case 140:
  bt848_hue(btv, c->value);
  break;
 case 141:
  bt848_contrast(btv, c->value);
  break;
 case 128:
  bt848_sat(btv, c->value);
  break;
 case 145:
  audio_mute(btv, c->value);

 case 143:
  if (btv->volume_gpio)
   btv->volume_gpio(btv, c->value);

  bttv_call_all(btv, core, s_ctrl, c);
  break;
 case 147:
 case 146:
 case 144:
  bttv_call_all(btv, core, s_ctrl, c);
  break;

 case 137:
  btv->opt_chroma_agc = c->value;
  val = btv->opt_chroma_agc ? BT848_SCLOOP_CAGC : 0;
  btwrite(val, BT848_E_SCLOOP);
  btwrite(val, BT848_O_SCLOOP);
  break;
 case 136:
  btv->opt_combfilter = c->value;
  break;
 case 133:
  btv->opt_lumafilter = c->value;
  if (btv->opt_lumafilter) {
   btand(~BT848_CONTROL_LDEC, BT848_E_CONTROL);
   btand(~BT848_CONTROL_LDEC, BT848_O_CONTROL);
  } else {
   btor(BT848_CONTROL_LDEC, BT848_E_CONTROL);
   btor(BT848_CONTROL_LDEC, BT848_O_CONTROL);
  }
  break;
 case 138:
  btv->opt_automute = c->value;
  break;
 case 139:
  btv->opt_adc_crush = c->value;
  btwrite(BT848_ADC_RESERVED |
    (btv->opt_adc_crush ? BT848_ADC_CRUSH : 0),
    BT848_ADC);
  break;
 case 131:
  btv->opt_vcr_hack = c->value;
  break;
 case 129:
  btv->opt_whitecrush_upper = c->value;
  btwrite(c->value, BT848_WC_UP);
  break;
 case 130:
  btv->opt_whitecrush_lower = c->value;
  btwrite(c->value, BT848_WC_DOWN);
  break;
 case 132:
  btv->opt_uv_ratio = c->value;
  bt848_sat(btv, btv->saturation);
  break;
 case 134:
  btv->opt_full_luma_range = c->value;
  btaor((c->value<<7), ~BT848_OFORM_RANGE, BT848_OFORM);
  break;
 case 135:
  btv->opt_coring = c->value;
  btaor((c->value<<5), ~BT848_OFORM_CORE32, BT848_OFORM);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
