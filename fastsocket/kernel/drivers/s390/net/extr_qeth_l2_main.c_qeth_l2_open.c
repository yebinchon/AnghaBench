
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int ERESTARTSYS ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_RECOVER_THREAD ;
 int TRACE ;
 int __qeth_l2_open (struct net_device*) ;
 scalar_t__ qeth_wait_for_threads (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l2_open(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;

 QETH_DBF_TEXT(TRACE, 5, "qethope_");
 if (qeth_wait_for_threads(card, QETH_RECOVER_THREAD)) {
  QETH_DBF_TEXT(TRACE, 3, "openREC");
  return -ERESTARTSYS;
 }
 return __qeth_l2_open(dev);
}
