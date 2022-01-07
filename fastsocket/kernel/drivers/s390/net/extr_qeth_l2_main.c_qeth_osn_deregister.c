
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data_cb; int * assist_cb; } ;
struct qeth_card {TYPE_1__ osn_info; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;

void qeth_osn_deregister(struct net_device *dev)
{
 struct qeth_card *card;

 QETH_DBF_TEXT(TRACE, 2, "osndereg");
 if (!dev)
  return;
 card = dev->ml_priv;
 if (!card)
  return;
 card->osn_info.assist_cb = ((void*)0);
 card->osn_info.data_cb = ((void*)0);
 return;
}
