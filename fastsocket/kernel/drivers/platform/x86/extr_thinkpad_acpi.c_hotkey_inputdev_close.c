
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 scalar_t__ TPACPI_LIFE_EXITING ;
 int hotkey_driver_mask ;
 int hotkey_poll_setup_safe (int) ;
 int hotkey_source_mask ;
 scalar_t__ tpacpi_lifecycle ;

__attribute__((used)) static void hotkey_inputdev_close(struct input_dev *dev)
{

 if (tpacpi_lifecycle != TPACPI_LIFE_EXITING &&
     !(hotkey_source_mask & hotkey_driver_mask))
  hotkey_poll_setup_safe(0);
}
