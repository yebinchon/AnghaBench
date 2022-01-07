
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lbs_private {scalar_t__ card; } ;
struct if_cs_card {int dummy; } ;


 int BUG_ON (int) ;
 int IF_CS_BIT_TX ;
 int IF_CS_CARD_STATUS ;
 int IF_CS_HOST_INT_CAUSE ;
 int IF_CS_HOST_STATUS ;
 int IF_CS_WRITE ;
 int IF_CS_WRITE_LEN ;
 int LBS_DEB_CS ;
 int if_cs_disable_ints (struct if_cs_card*) ;
 int if_cs_enable_ints (struct if_cs_card*) ;
 int if_cs_read16 (struct if_cs_card*,int ) ;
 int if_cs_write16 (struct if_cs_card*,int ,int) ;
 int if_cs_write16_rep (struct if_cs_card*,int ,int *,int) ;
 int if_cs_write8 (struct if_cs_card*,int ,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static void if_cs_send_data(struct lbs_private *priv, u8 *buf, u16 nb)
{
 struct if_cs_card *card = (struct if_cs_card *)priv->card;
 u16 status;

 lbs_deb_enter(LBS_DEB_CS);
 if_cs_disable_ints(card);

 status = if_cs_read16(card, IF_CS_CARD_STATUS);
 BUG_ON((status & IF_CS_BIT_TX) == 0);

 if_cs_write16(card, IF_CS_WRITE_LEN, nb);


 if_cs_write16_rep(card, IF_CS_WRITE, buf, nb / 2);
 if (nb & 1)
  if_cs_write8(card, IF_CS_WRITE, buf[nb-1]);

 if_cs_write16(card, IF_CS_HOST_STATUS, IF_CS_BIT_TX);
 if_cs_write16(card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_TX);
 if_cs_enable_ints(card);

 lbs_deb_leave(LBS_DEB_CS);
}
