
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ata_device {TYPE_1__* link; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int ap; } ;


 int ata_acpi_uevent (int ,struct ata_device*,int ) ;

__attribute__((used)) static void ata_acpi_dev_uevent(acpi_handle handle, u32 event, void *data)
{
 struct ata_device *dev = data;
 ata_acpi_uevent(dev->link->ap, dev, event);
}
