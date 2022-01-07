
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lbs_private {scalar_t__ card; } ;
struct if_cs_card {int dummy; } ;


 int IF_CS_BIT_COMMAND ;
 int IF_CS_CARD_STATUS ;
 int IF_CS_CMD ;
 int IF_CS_CMD_LEN ;
 int IF_CS_HOST_INT_CAUSE ;
 int IF_CS_HOST_STATUS ;
 int LBS_DEB_CS ;
 int if_cs_disable_ints (struct if_cs_card*) ;
 int if_cs_enable_ints (struct if_cs_card*) ;
 int if_cs_read16 (struct if_cs_card*,int ) ;
 int if_cs_write16 (struct if_cs_card*,int ,int) ;
 int if_cs_write16_rep (struct if_cs_card*,int ,int *,int) ;
 int if_cs_write8 (struct if_cs_card*,int ,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_pr_err (char*) ;
 int mdelay (int) ;

__attribute__((used)) static int if_cs_send_cmd(struct lbs_private *priv, u8 *buf, u16 nb)
{
 struct if_cs_card *card = (struct if_cs_card *)priv->card;
 int ret = -1;
 int loops = 0;

 lbs_deb_enter(LBS_DEB_CS);
 if_cs_disable_ints(card);


 while (1) {
  u16 status = if_cs_read16(card, IF_CS_CARD_STATUS);
  if (status & IF_CS_BIT_COMMAND)
   break;
  if (++loops > 100) {
   lbs_pr_err("card not ready for commands\n");
   goto done;
  }
  mdelay(1);
 }

 if_cs_write16(card, IF_CS_CMD_LEN, nb);

 if_cs_write16_rep(card, IF_CS_CMD, buf, nb / 2);

 if (nb & 1)
  if_cs_write8(card, IF_CS_CMD, buf[nb-1]);



 if_cs_write16(card, IF_CS_HOST_STATUS, IF_CS_BIT_COMMAND);



 if_cs_write16(card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_COMMAND);
 ret = 0;

done:
 if_cs_enable_ints(card);
 lbs_deb_leave_args(LBS_DEB_CS, "ret %d", ret);
 return ret;
}
