
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; } ;


 int HCI_RUNNING ;
 int dtl1_hci_flush (struct hci_dev*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int dtl1_hci_close(struct hci_dev *hdev)
{
 if (!test_and_clear_bit(HCI_RUNNING, &(hdev->flags)))
  return 0;

 dtl1_hci_flush(hdev);

 return 0;
}
