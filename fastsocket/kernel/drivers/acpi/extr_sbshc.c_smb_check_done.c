
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; scalar_t__ done; } ;
union acpi_smb_status {TYPE_1__ fields; int raw; } ;
struct acpi_smb_hc {int dummy; } ;


 int ACPI_SMB_STATUS ;
 scalar_t__ SMBUS_OK ;
 int smb_hc_read (struct acpi_smb_hc*,int ,int *) ;

__attribute__((used)) static inline int smb_check_done(struct acpi_smb_hc *hc)
{
 union acpi_smb_status status = {.raw = 0};
 smb_hc_read(hc, ACPI_SMB_STATUS, &status.raw);
 return status.fields.done && (status.fields.status == SMBUS_OK);
}
