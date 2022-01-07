
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HCI_WIRELESS ;
 int HCI_WIRELESS_KILL_SWITCH ;
 int hci_read2 (int ,int*,int*,int*) ;

__attribute__((used)) static u32 hci_get_radio_state(bool *radio_state)
{
 u32 hci_result;
 u32 value, value2;

 value = 0;
 value2 = 0x0001;
 hci_read2(HCI_WIRELESS, &value, &value2, &hci_result);

 *radio_state = value & HCI_WIRELESS_KILL_SWITCH;
 return hci_result;
}
