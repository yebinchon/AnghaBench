
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {char* ident; int matches; } ;
struct ata_host {int dev; int flags; } ;


 int ATA_HOST_IGNORE_ATA ;
 int dev_info (int ,char*,char*) ;
 struct dmi_system_id* dmi_first_match (struct dmi_system_id const*) ;
 scalar_t__ prefer_ms_hyperv ;

__attribute__((used)) static void piix_ignore_devices_quirk(struct ata_host *host)
{
}
