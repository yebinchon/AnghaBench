
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct backlight_device {int dummy; } ;


 int EFAULT ;
 int HCI_LCD_BRIGHTNESS ;
 scalar_t__ HCI_LCD_BRIGHTNESS_SHIFT ;
 scalar_t__ HCI_SUCCESS ;
 int hci_read1 (int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int get_lcd(struct backlight_device *bd)
{
 u32 hci_result;
 u32 value;

 hci_read1(HCI_LCD_BRIGHTNESS, &value, &hci_result);
 if (hci_result == HCI_SUCCESS) {
  return (value >> HCI_LCD_BRIGHTNESS_SHIFT);
 } else
  return -EFAULT;
}
