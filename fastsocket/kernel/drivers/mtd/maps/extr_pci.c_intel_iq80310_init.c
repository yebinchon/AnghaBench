
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int bankwidth; int size; int map_priv_2; int write; int read; } ;
struct map_pci_info {TYPE_1__ map; int base; } ;


 int ENOMEM ;
 int ioremap_nocache (int ,int ) ;
 int mtd_pci_read8 ;
 int mtd_pci_write8 ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static int
intel_iq80310_init(struct pci_dev *dev, struct map_pci_info *map)
{
 u32 win_base;

 map->map.bankwidth = 1;
 map->map.read = mtd_pci_read8,
 map->map.write = mtd_pci_write8,

 map->map.size = 0x00800000;
 map->base = ioremap_nocache(pci_resource_start(dev, 0),
         pci_resource_len(dev, 0));

 if (!map->base)
  return -ENOMEM;





 pci_read_config_dword(dev, 0x44, &win_base);
 pci_write_config_dword(dev, 0x44, 0);

 map->map.map_priv_2 = win_base;

 return 0;
}
