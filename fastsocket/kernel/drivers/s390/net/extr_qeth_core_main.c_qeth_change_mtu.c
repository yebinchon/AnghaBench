
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct net_device {int mtu; struct qeth_card* ml_priv; } ;


 int EINVAL ;
 int IPA_IP_FRAGMENTATION ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_mtu_is_valid (struct qeth_card*,int) ;
 int sprintf (char*,char*,int) ;

int qeth_change_mtu(struct net_device *dev, int new_mtu)
{
 struct qeth_card *card;
 char dbf_text[15];

 card = dev->ml_priv;

 QETH_DBF_TEXT(TRACE, 4, "chgmtu");
 sprintf(dbf_text, "%8x", new_mtu);
 QETH_DBF_TEXT(TRACE, 4, dbf_text);

 if (new_mtu < 64)
  return -EINVAL;
 if (new_mtu > 65535)
  return -EINVAL;
 if ((!qeth_is_supported(card, IPA_IP_FRAGMENTATION)) &&
     (!qeth_mtu_is_valid(card, new_mtu)))
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
