
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {scalar_t__ id; int pen_probably_down; int codec_mutex; TYPE_1__* codec; } ;
struct TYPE_2__ {int (* dig_restore ) (struct wm97xx*) ;int (* poll_sample ) (struct wm97xx*,int,int*) ;int (* aux_prepare ) (struct wm97xx*) ;} ;


 int AC97_EXTENDED_MID ;
 scalar_t__ WM9713_ID2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wm97xx*) ;
 int stub2 (struct wm97xx*,int,int*) ;
 int stub3 (struct wm97xx*) ;
 int wm97xx_reg_read (struct wm97xx*,int ) ;
 int wm97xx_reg_write (struct wm97xx*,int ,int) ;

int wm97xx_read_aux_adc(struct wm97xx *wm, u16 adcsel)
{
 int power_adc = 0, auxval;
 u16 power = 0;


 mutex_lock(&wm->codec_mutex);




 if (wm->id == WM9713_ID2 &&
     (power = wm97xx_reg_read(wm, AC97_EXTENDED_MID)) & 0x8000) {
  power_adc = 1;
  wm97xx_reg_write(wm, AC97_EXTENDED_MID, power & 0x7fff);
 }


 wm->codec->aux_prepare(wm);


 wm->pen_probably_down = 1;
 wm->codec->poll_sample(wm, adcsel, &auxval);

 if (power_adc)
  wm97xx_reg_write(wm, AC97_EXTENDED_MID, power | 0x8000);

 wm->codec->dig_restore(wm);

 wm->pen_probably_down = 0;

 mutex_unlock(&wm->codec_mutex);
 return auxval & 0xfff;
}
