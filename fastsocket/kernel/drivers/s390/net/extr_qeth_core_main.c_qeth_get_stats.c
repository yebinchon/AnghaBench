
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct qeth_card {struct net_device_stats stats; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;

struct net_device_stats *qeth_get_stats(struct net_device *dev)
{
 struct qeth_card *card;

 card = dev->ml_priv;

 QETH_DBF_TEXT(TRACE, 5, "getstat");

 return &card->stats;
}
