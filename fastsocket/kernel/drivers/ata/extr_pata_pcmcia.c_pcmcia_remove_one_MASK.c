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
struct device {int dummy; } ;
struct pcmcia_device {struct ata_pcmcia_info* priv; struct device dev; } ;
struct ata_pcmcia_info {scalar_t__ ndev; } ;
struct ata_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 struct ata_host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_pcmcia_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *pdev)
{
	struct ata_pcmcia_info *info = pdev->priv;
	struct device *dev = &pdev->dev;

	if (info != NULL) {
		/* If we have attached the device to the ATA layer, detach it */
		if (info->ndev) {
			struct ata_host *host = FUNC1(dev);
			FUNC0(host);
		}
		info->ndev = 0;
		pdev->priv = NULL;
	}
	FUNC3(pdev);
	FUNC2(info);
}