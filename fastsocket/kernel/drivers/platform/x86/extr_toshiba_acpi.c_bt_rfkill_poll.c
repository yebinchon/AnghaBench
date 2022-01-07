
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct toshiba_acpi_dev {int mutex; } ;
struct rfkill {int dummy; } ;


 scalar_t__ HCI_SUCCESS ;
 int bt_rfkill_set_block (void*,int) ;
 scalar_t__ hci_get_radio_state (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rfkill_set_hw_state (struct rfkill*,int) ;

__attribute__((used)) static void bt_rfkill_poll(struct rfkill *rfkill, void *data)
{
 bool new_rfk_state;
 bool value;
 u32 hci_result;
 struct toshiba_acpi_dev *dev = data;

 mutex_lock(&dev->mutex);

 hci_result = hci_get_radio_state(&value);
 if (hci_result != HCI_SUCCESS) {

  mutex_unlock(&dev->mutex);
  return;
 }

 new_rfk_state = value;

 mutex_unlock(&dev->mutex);

 if (rfkill_set_hw_state(rfkill, !new_rfk_state))
  bt_rfkill_set_block(data, 1);
}
