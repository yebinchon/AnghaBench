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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct ata_host {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MCP_SATA_CFG_20 ; 
 int /*<<< orphan*/  NV_MCP_SATA_CFG_20_SATA_SPACE_EN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ata_host *host)
{
	struct pci_dev *pdev = FUNC2(host->dev);
	u8 regval;

	/* disable SATA space for CK804 */
	FUNC0(pdev, NV_MCP_SATA_CFG_20, &regval);
	regval &= ~NV_MCP_SATA_CFG_20_SATA_SPACE_EN;
	FUNC1(pdev, NV_MCP_SATA_CFG_20, regval);
}