
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int * rx_skb; } ;


 int BT_DBG (char*,int ) ;
 int kfree (struct bpa10x_data*) ;
 int kfree_skb (int ) ;

__attribute__((used)) static void bpa10x_destruct(struct hci_dev *hdev)
{
 struct bpa10x_data *data = hdev->driver_data;

 BT_DBG("%s", hdev->name);

 kfree_skb(data->rx_skb[0]);
 kfree_skb(data->rx_skb[1]);
 kfree(data);
}
