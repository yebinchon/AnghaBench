
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ alarm; scalar_t__ done; } ;
union acpi_smb_status {int raw; TYPE_1__ fields; } ;
typedef int u8 ;
struct acpi_smb_hc {int lock; int wait; } ;





 int ACPI_SMB_ALARM_ADDRESS ;
 int ACPI_SMB_STATUS ;
 int OSL_GPE_HANDLER ;
 int acpi_os_execute (int ,int ,struct acpi_smb_hc*) ;
 int acpi_smbus_callback ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ smb_hc_read (struct acpi_smb_hc*,int ,int*) ;
 int smb_hc_write (struct acpi_smb_hc*,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int smbus_alarm(void *context)
{
 struct acpi_smb_hc *hc = context;
 union acpi_smb_status status;
 u8 address;
 if (smb_hc_read(hc, ACPI_SMB_STATUS, &status.raw))
  return 0;

 if (status.fields.done)
  wake_up(&hc->wait);
 if (!status.fields.alarm)
  return 0;
 mutex_lock(&hc->lock);
 smb_hc_read(hc, ACPI_SMB_ALARM_ADDRESS, &address);
 status.fields.alarm = 0;
 smb_hc_write(hc, ACPI_SMB_STATUS, status.raw);

 switch (address >> 1) {
  case 129:
  case 128:
  case 130:
   acpi_os_execute(OSL_GPE_HANDLER,
     acpi_smbus_callback, hc);
  default:;
 }
 mutex_unlock(&hc->lock);
 return 0;
}
