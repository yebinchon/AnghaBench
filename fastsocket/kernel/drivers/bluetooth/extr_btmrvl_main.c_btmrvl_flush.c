
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {struct btmrvl_private* driver_data; } ;
struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int tx_queue; } ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static int btmrvl_flush(struct hci_dev *hdev)
{
 struct btmrvl_private *priv = hdev->driver_data;

 skb_queue_purge(&priv->adapter->tx_queue);

 return 0;
}
