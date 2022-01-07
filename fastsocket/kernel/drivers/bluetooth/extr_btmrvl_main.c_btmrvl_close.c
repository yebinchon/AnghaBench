
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {int flags; struct btmrvl_private* driver_data; } ;
struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int tx_queue; } ;


 int HCI_RUNNING ;
 int skb_queue_purge (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int btmrvl_close(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hdev->driver_data;

 if (!test_and_clear_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 skb_queue_purge(&priv->adapter->tx_queue);

 return 0;
}
