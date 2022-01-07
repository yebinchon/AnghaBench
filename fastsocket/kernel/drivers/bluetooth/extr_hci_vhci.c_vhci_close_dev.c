
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int readq; } ;
struct hci_dev {int flags; struct vhci_data* driver_data; } ;


 int HCI_RUNNING ;
 int skb_queue_purge (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int vhci_close_dev(struct hci_dev *hdev)
{
 struct vhci_data *data = hdev->driver_data;

 if (!test_and_clear_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 skb_queue_purge(&data->readq);

 return 0;
}
