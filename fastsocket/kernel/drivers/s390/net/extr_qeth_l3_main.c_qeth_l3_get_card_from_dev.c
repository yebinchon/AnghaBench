
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_1__ options; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct TYPE_4__ {struct qeth_card* ml_priv; } ;


 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_REAL_CARD ;
 int QETH_VLAN_CARD ;
 int TRACE ;
 int qeth_l3_verify_dev (struct net_device*) ;
 TYPE_2__* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static struct qeth_card *qeth_l3_get_card_from_dev(struct net_device *dev)
{
 struct qeth_card *card = ((void*)0);
 int rc;

 rc = qeth_l3_verify_dev(dev);
 if (rc == QETH_REAL_CARD)
  card = dev->ml_priv;
 else if (rc == QETH_VLAN_CARD)
  card = vlan_dev_real_dev(dev)->ml_priv;
 if (card && card->options.layer2)
  card = ((void*)0);
 QETH_DBF_TEXT_(TRACE, 4, "%d", rc);
 return card ;
}
