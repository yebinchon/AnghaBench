
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* assist_cb ) (struct net_device*,void*) ;int (* data_cb ) (struct sk_buff*) ;} ;
struct qeth_card {TYPE_1__ osn_info; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int EINVAL ;
 int ENODEV ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 struct net_device* qeth_l2_netdev_by_devno (unsigned char*) ;

int qeth_osn_register(unsigned char *read_dev_no, struct net_device **dev,
    int (*assist_cb)(struct net_device *, void *),
    int (*data_cb)(struct sk_buff *))
{
 struct qeth_card *card;

 QETH_DBF_TEXT(TRACE, 2, "osnreg");
 *dev = qeth_l2_netdev_by_devno(read_dev_no);
 if (*dev == ((void*)0))
  return -ENODEV;
 card = (*dev)->ml_priv;
 if (!card)
  return -ENODEV;
 if ((assist_cb == ((void*)0)) || (data_cb == ((void*)0)))
  return -EINVAL;
 card->osn_info.assist_cb = assist_cb;
 card->osn_info.data_cb = data_cb;
 return 0;
}
