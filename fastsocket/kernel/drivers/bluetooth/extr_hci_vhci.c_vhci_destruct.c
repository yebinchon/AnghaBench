
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int driver_data; } ;


 int kfree (int ) ;

__attribute__((used)) static void vhci_destruct(struct hci_dev *hdev)
{
 kfree(hdev->driver_data);
}
