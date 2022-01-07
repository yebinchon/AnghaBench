
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smb_hc {int context; int (* callback ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline void acpi_smbus_callback(void *context)
{
 struct acpi_smb_hc *hc = context;
 if (hc->callback)
  hc->callback(hc->context);
}
