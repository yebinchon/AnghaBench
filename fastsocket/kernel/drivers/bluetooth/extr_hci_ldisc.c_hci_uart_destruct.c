
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int driver_data; int name; } ;


 int BT_DBG (char*,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void hci_uart_destruct(struct hci_dev *hdev)
{
 if (!hdev)
  return;

 BT_DBG("%s", hdev->name);
 kfree(hdev->driver_data);
}
