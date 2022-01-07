
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usbhid_remove_all_dquirks () ;

void usbhid_quirks_exit(void)
{
 usbhid_remove_all_dquirks();
}
