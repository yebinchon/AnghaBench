
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int EBUSY ;
 int MII_TG3_DSP_ADDRESS ;
 int MII_TG3_DSP_CONTROL ;
 int MII_TG3_DSP_RW_PORT ;
 scalar_t__ tg3_wait_macro_done (struct tg3*) ;
 int tg3_writephy (struct tg3*,int ,int) ;

__attribute__((used)) static int tg3_phy_reset_chanpat(struct tg3 *tp)
{
 int chan;

 for (chan = 0; chan < 4; chan++) {
  int i;

  tg3_writephy(tp, MII_TG3_DSP_ADDRESS,
        (chan * 0x2000) | 0x0200);
  tg3_writephy(tp, MII_TG3_DSP_CONTROL, 0x0002);
  for (i = 0; i < 6; i++)
   tg3_writephy(tp, MII_TG3_DSP_RW_PORT, 0x000);
  tg3_writephy(tp, MII_TG3_DSP_CONTROL, 0x0202);
  if (tg3_wait_macro_done(tp))
   return -EBUSY;
 }

 return 0;
}
