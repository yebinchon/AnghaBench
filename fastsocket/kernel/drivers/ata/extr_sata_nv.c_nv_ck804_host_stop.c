
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_host {int dev; } ;


 int NV_MCP_SATA_CFG_20 ;
 int NV_MCP_SATA_CFG_20_SATA_SPACE_EN ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void nv_ck804_host_stop(struct ata_host *host)
{
 struct pci_dev *pdev = to_pci_dev(host->dev);
 u8 regval;


 pci_read_config_byte(pdev, NV_MCP_SATA_CFG_20, &regval);
 regval &= ~NV_MCP_SATA_CFG_20_SATA_SPACE_EN;
 pci_write_config_byte(pdev, NV_MCP_SATA_CFG_20, regval);
}
