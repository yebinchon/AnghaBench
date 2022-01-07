
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int TPACPI_RFK_RADIO_OFF ;
 int TPACPI_RFK_RADIO_ON ;
 int TP_ACPI_BLUETOOTH_RADIOSSW ;
 int acpi_evalf (int ,int*,char*,char*) ;
 scalar_t__ dbg_bluetoothemul ;
 int hkey_handle ;
 scalar_t__ tpacpi_bluetooth_emulstate ;

__attribute__((used)) static int bluetooth_get_status(void)
{
 int status;







 if (!acpi_evalf(hkey_handle, &status, "GBDC", "d"))
  return -EIO;

 return ((status & TP_ACPI_BLUETOOTH_RADIOSSW) != 0) ?
   TPACPI_RFK_RADIO_ON : TPACPI_RFK_RADIO_OFF;
}
