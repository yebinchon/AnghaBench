
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int type; int maximum; int minimum; int name; } ;
struct v4l2_priv_tun_config {int * priv; int tuner; } ;
struct v4l2_control {int id; int value; } ;
struct saa7134_fh {int prio; } ;
struct saa7134_dev {int lock; int slock; int tda9887_conf; int ctl_automute; int ctl_y_odd; int ctl_y_even; int ctl_mirror; int ctl_saturation; int ctl_invert; int ctl_contrast; int ctl_volume; int ctl_mute; int ctl_hue; int ctl_bright; int prio; } ;


 int EINVAL ;
 int RESOURCE_OVERLAY ;
 int SAA7134_DEC_CHROMA_HUE ;
 int SAA7134_DEC_CHROMA_SATURATION ;
 int SAA7134_DEC_LUMA_BRIGHT ;
 int SAA7134_DEC_LUMA_CONTRAST ;
 int TDA9887_AUTOMUTE ;
 int TUNER_TDA9887 ;
 struct v4l2_queryctrl* ctrl_by_id (int) ;
 int dprintk (char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ res_check (struct saa7134_fh*,int ) ;
 int s_config ;
 int saa7134_tvaudio_setmute (struct saa7134_dev*) ;
 int saa7134_tvaudio_setvolume (struct saa7134_dev*,int ) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_priv_tun_config*) ;
 int saa_writeb (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_preview (struct saa7134_dev*,struct saa7134_fh*) ;
 int stop_preview (struct saa7134_dev*,struct saa7134_fh*) ;
 int tuner ;
 int v4l2_prio_check (int *,int ) ;

int saa7134_s_ctrl_internal(struct saa7134_dev *dev, struct saa7134_fh *fh, struct v4l2_control *c)
{
 const struct v4l2_queryctrl* ctrl;
 unsigned long flags;
 int restart_overlay = 0;
 int err;




 if (fh) {
  err = v4l2_prio_check(&dev->prio, fh->prio);
  if (0 != err)
   return err;
 }
 err = -EINVAL;

 mutex_lock(&dev->lock);

 ctrl = ctrl_by_id(c->id);
 if (((void*)0) == ctrl)
  goto error;

 dprintk("set_control name=%s val=%d\n",ctrl->name,c->value);
 switch (ctrl->type) {
 case 130:
 case 128:
 case 129:
  if (c->value < ctrl->minimum)
   c->value = ctrl->minimum;
  if (c->value > ctrl->maximum)
   c->value = ctrl->maximum;
  break;
 default:
               ;
 };
 switch (c->id) {
 case 139:
  dev->ctl_bright = c->value;
  saa_writeb(SAA7134_DEC_LUMA_BRIGHT, dev->ctl_bright);
  break;
 case 136:
  dev->ctl_hue = c->value;
  saa_writeb(SAA7134_DEC_CHROMA_HUE, dev->ctl_hue);
  break;
 case 138:
  dev->ctl_contrast = c->value;
  saa_writeb(SAA7134_DEC_LUMA_CONTRAST,
      dev->ctl_invert ? -dev->ctl_contrast : dev->ctl_contrast);
  break;
 case 131:
  dev->ctl_saturation = c->value;
  saa_writeb(SAA7134_DEC_CHROMA_SATURATION,
      dev->ctl_invert ? -dev->ctl_saturation : dev->ctl_saturation);
  break;
 case 141:
  dev->ctl_mute = c->value;
  saa7134_tvaudio_setmute(dev);
  break;
 case 140:
  dev->ctl_volume = c->value;
  saa7134_tvaudio_setvolume(dev,dev->ctl_volume);
  break;
 case 134:
  dev->ctl_invert = c->value;
  saa_writeb(SAA7134_DEC_LUMA_CONTRAST,
      dev->ctl_invert ? -dev->ctl_contrast : dev->ctl_contrast);
  saa_writeb(SAA7134_DEC_CHROMA_SATURATION,
      dev->ctl_invert ? -dev->ctl_saturation : dev->ctl_saturation);
  break;
 case 137:
  dev->ctl_mirror = c->value;
  restart_overlay = 1;
  break;
 case 133:
  dev->ctl_y_even = c->value;
  restart_overlay = 1;
  break;
 case 132:
  dev->ctl_y_odd = c->value;
  restart_overlay = 1;
  break;
 case 135:
 {
  struct v4l2_priv_tun_config tda9887_cfg;

  tda9887_cfg.tuner = TUNER_TDA9887;
  tda9887_cfg.priv = &dev->tda9887_conf;

  dev->ctl_automute = c->value;
  if (dev->tda9887_conf) {
   if (dev->ctl_automute)
    dev->tda9887_conf |= TDA9887_AUTOMUTE;
   else
    dev->tda9887_conf &= ~TDA9887_AUTOMUTE;

   saa_call_all(dev, tuner, s_config, &tda9887_cfg);
  }
  break;
 }
 default:
  goto error;
 }
 if (restart_overlay && fh && res_check(fh, RESOURCE_OVERLAY)) {
  spin_lock_irqsave(&dev->slock,flags);
  stop_preview(dev,fh);
  start_preview(dev,fh);
  spin_unlock_irqrestore(&dev->slock,flags);
 }
 err = 0;

error:
 mutex_unlock(&dev->lock);
 return err;
}
