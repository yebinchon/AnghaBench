
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int TP_ACPI_WAKEUP_NONE ;
 scalar_t__ hotkey_autosleep_ack ;
 int hotkey_wakeup_reason ;

__attribute__((used)) static void hotkey_suspend(pm_message_t state)
{

 hotkey_wakeup_reason = TP_ACPI_WAKEUP_NONE;
 hotkey_autosleep_ack = 0;
}
