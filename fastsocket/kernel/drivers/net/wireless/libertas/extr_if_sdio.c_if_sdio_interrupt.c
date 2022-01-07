
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int dummy; } ;
struct if_sdio_card {int priv; int func; } ;


 int IF_SDIO_H_INT_DNLD ;
 int IF_SDIO_H_INT_STATUS ;
 int IF_SDIO_H_INT_UPLD ;
 int LBS_DEB_SDIO ;
 int if_sdio_card_to_host (struct if_sdio_card*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_sdio (char*,unsigned int) ;
 int lbs_host_to_card_done (int ) ;
 struct if_sdio_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_readb (int ,int ,int*) ;
 int sdio_writeb (int ,int,int ,int*) ;

__attribute__((used)) static void if_sdio_interrupt(struct sdio_func *func)
{
 int ret;
 struct if_sdio_card *card;
 u8 cause;

 lbs_deb_enter(LBS_DEB_SDIO);

 card = sdio_get_drvdata(func);

 cause = sdio_readb(card->func, IF_SDIO_H_INT_STATUS, &ret);
 if (ret)
  goto out;

 lbs_deb_sdio("interrupt: 0x%X\n", (unsigned)cause);

 sdio_writeb(card->func, ~cause, IF_SDIO_H_INT_STATUS, &ret);
 if (ret)
  goto out;





 if (cause & IF_SDIO_H_INT_DNLD)
  lbs_host_to_card_done(card->priv);


 if (cause & IF_SDIO_H_INT_UPLD) {
  ret = if_sdio_card_to_host(card);
  if (ret)
   goto out;
 }

 ret = 0;

out:
 lbs_deb_leave_args(LBS_DEB_SDIO, "ret %d", ret);
}
