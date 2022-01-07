
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct acpi_smb_hc {scalar_t__ offset; } ;


 int ec_read (scalar_t__,scalar_t__*) ;

__attribute__((used)) static inline int smb_hc_read(struct acpi_smb_hc *hc, u8 address, u8 *data)
{
 return ec_read(hc->offset + address, data);
}
