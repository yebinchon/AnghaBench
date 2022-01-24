#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct ata_host {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MCP_SATA_CFG_20 ; 
 int NV_MCP_SATA_CFG_20_PORT0_EN ; 
 int NV_MCP_SATA_CFG_20_PORT0_PWB_EN ; 
 int NV_MCP_SATA_CFG_20_PORT1_EN ; 
 int NV_MCP_SATA_CFG_20_PORT1_PWB_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_host *host)
{
	struct pci_dev *pdev = FUNC3(host->dev);
	u32 tmp32;

	/* disable ADMA on the ports */
	FUNC1(pdev, NV_MCP_SATA_CFG_20, &tmp32);
	tmp32 &= ~(NV_MCP_SATA_CFG_20_PORT0_EN |
		   NV_MCP_SATA_CFG_20_PORT0_PWB_EN |
		   NV_MCP_SATA_CFG_20_PORT1_EN |
		   NV_MCP_SATA_CFG_20_PORT1_PWB_EN);

	FUNC2(pdev, NV_MCP_SATA_CFG_20, tmp32);

	FUNC0(host);
}