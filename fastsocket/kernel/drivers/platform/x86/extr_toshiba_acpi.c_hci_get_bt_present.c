
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ HCI_SUCCESS ;
 int HCI_WIRELESS ;
 scalar_t__ HCI_WIRELESS_BT_PRESENT ;
 int hci_read2 (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static u32 hci_get_bt_present(bool *present)
{
 u32 hci_result;
 u32 value, value2;

 value = 0;
 value2 = 0;
 hci_read2(HCI_WIRELESS, &value, &value2, &hci_result);
 if (hci_result == HCI_SUCCESS)
  *present = (value & HCI_WIRELESS_BT_PRESENT) ? 1 : 0;

 return hci_result;
}
