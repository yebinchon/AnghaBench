
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tulip_private {int flags; int pdev; } ;


 int CFDD ;
 int CFDD_Sleep ;
 int CFDD_Snooze ;
 int HAS_ACPI ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void tulip_set_power_state (struct tulip_private *tp,
       int sleep, int snooze)
{
 if (tp->flags & HAS_ACPI) {
  u32 tmp, newtmp;
  pci_read_config_dword (tp->pdev, CFDD, &tmp);
  newtmp = tmp & ~(CFDD_Sleep | CFDD_Snooze);
  if (sleep)
   newtmp |= CFDD_Sleep;
  else if (snooze)
   newtmp |= CFDD_Snooze;
  if (tmp != newtmp)
   pci_write_config_dword (tp->pdev, CFDD, newtmp);
 }

}
