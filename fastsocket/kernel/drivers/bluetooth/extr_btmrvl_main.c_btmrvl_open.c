
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; } ;


 int HCI_RUNNING ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int btmrvl_open(struct hci_dev *hdev)
{
 set_bit(HCI_RUNNING, &hdev->flags);

 return 0;
}
