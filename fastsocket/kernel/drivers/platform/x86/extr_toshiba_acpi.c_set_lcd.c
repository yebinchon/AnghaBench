
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EFAULT ;
 int HCI_LCD_BRIGHTNESS ;
 int HCI_LCD_BRIGHTNESS_SHIFT ;
 scalar_t__ HCI_SUCCESS ;
 int hci_write1 (int ,int,scalar_t__*) ;

__attribute__((used)) static int set_lcd(int value)
{
 u32 hci_result;

 value = value << HCI_LCD_BRIGHTNESS_SHIFT;
 hci_write1(HCI_LCD_BRIGHTNESS, value, &hci_result);
 if (hci_result != HCI_SUCCESS)
  return -EFAULT;

 return 0;
}
