
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int readq; } ;
struct hci_dev {struct vhci_data* driver_data; } ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static int vhci_flush(struct hci_dev *hdev)
{
 struct vhci_data *data = hdev->driver_data;

 skb_queue_purge(&data->readq);

 return 0;
}
