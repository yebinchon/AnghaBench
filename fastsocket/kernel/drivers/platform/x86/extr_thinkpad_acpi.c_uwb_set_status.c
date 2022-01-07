
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tpacpi_rfkill_state { ____Placeholder_tpacpi_rfkill_state } tpacpi_rfkill_state ;


 int EIO ;
 int TPACPI_DBG_RFKILL ;
 int TPACPI_RFK_RADIO_ON ;
 int TP_ACPI_UWB_RADIOSSW ;
 int acpi_evalf (int ,int *,char*,char*,int) ;
 scalar_t__ dbg_uwbemul ;
 int hkey_handle ;
 int tpacpi_uwb_emulstate ;
 int vdbg_printk (int ,char*,char*) ;

__attribute__((used)) static int uwb_set_status(enum tpacpi_rfkill_state state)
{
 int status;

 vdbg_printk(TPACPI_DBG_RFKILL,
  "will attempt to %s UWB\n",
  (state == TPACPI_RFK_RADIO_ON) ? "enable" : "disable");
 if (state == TPACPI_RFK_RADIO_ON)
  status = TP_ACPI_UWB_RADIOSSW;
 else
  status = 0;

 if (!acpi_evalf(hkey_handle, ((void*)0), "SUWB", "vd", status))
  return -EIO;

 return 0;
}
