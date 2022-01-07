
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dev; } ;
struct in_device {int mc_list_lock; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 struct in_device* in_dev_get (int ) ;
 int in_dev_put (struct in_device*) ;
 int qeth_l3_add_mc (struct qeth_card*,struct in_device*) ;
 int qeth_l3_add_vlan_mc (struct qeth_card*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void qeth_l3_add_multicast_ipv4(struct qeth_card *card)
{
 struct in_device *in4_dev;

 QETH_DBF_TEXT(TRACE, 4, "chkmcv4");
 in4_dev = in_dev_get(card->dev);
 if (in4_dev == ((void*)0))
  return;
 read_lock(&in4_dev->mc_list_lock);
 qeth_l3_add_mc(card, in4_dev);
 qeth_l3_add_vlan_mc(card);
 read_unlock(&in4_dev->mc_list_lock);
 in_dev_put(in4_dev);
}
