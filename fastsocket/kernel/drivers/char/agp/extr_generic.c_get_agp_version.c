
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct agp_bridge_data {int major_version; int minor_version; int capndx; int dev; } ;


 int AGP_MAJOR_VERSION_SHIFT ;
 int AGP_MINOR_VERSION_SHIFT ;
 int pci_read_config_dword (int ,int ,int*) ;

void get_agp_version(struct agp_bridge_data *bridge)
{
 u32 ncapid;


 if (bridge->major_version != 0)
  return;

 pci_read_config_dword(bridge->dev, bridge->capndx, &ncapid);
 bridge->major_version = (ncapid >> AGP_MAJOR_VERSION_SHIFT) & 0xf;
 bridge->minor_version = (ncapid >> AGP_MINOR_VERSION_SHIFT) & 0xf;
}
