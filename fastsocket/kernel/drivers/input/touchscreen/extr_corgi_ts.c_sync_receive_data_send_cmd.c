
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct corgi_ts {TYPE_1__* machinfo; } ;
struct TYPE_2__ {int (* wait_hsync ) () ;} ;


 unsigned int ADSCTRL_ADR_SH ;
 unsigned int ADSCTRL_PD0 ;
 unsigned int ADSCTRL_PD1 ;
 unsigned int ADSCTRL_STS ;
 int CCNT (unsigned long) ;
 int PMNC_GET (unsigned long) ;
 int PMNC_SET (unsigned long) ;
 int corgi_ssp_ads7846_get () ;
 int corgi_ssp_ads7846_put (int) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int sync_receive_data_send_cmd(struct corgi_ts *corgi_ts, int doRecive, int doSend,
  unsigned int address, unsigned long wait_time)
{
 unsigned long timer1 = 0, timer2, pmnc = 0;
 int pos = 0;

 if (wait_time && doSend) {
  PMNC_GET(pmnc);
  if (!(pmnc & 0x01))
   PMNC_SET(0x01);


  corgi_ts->machinfo->wait_hsync();

  CCNT(timer1);
 }

 if (doRecive)
  pos = corgi_ssp_ads7846_get();

 if (doSend) {
  int cmd = ADSCTRL_PD0 | ADSCTRL_PD1 | (address << ADSCTRL_ADR_SH) | ADSCTRL_STS;

  corgi_ssp_ads7846_put(cmd);
  corgi_ssp_ads7846_get();

  if (wait_time) {

   CCNT(timer2);
   if (timer2-timer1 > wait_time) {

    corgi_ts->machinfo->wait_hsync();

    CCNT(timer1);

    CCNT(timer2);
   }
   while (timer2 - timer1 < wait_time)
    CCNT(timer2);
  }
  corgi_ssp_ads7846_put(cmd);
  if (wait_time && !(pmnc & 0x01))
   PMNC_SET(pmnc);
 }
 return pos;
}
