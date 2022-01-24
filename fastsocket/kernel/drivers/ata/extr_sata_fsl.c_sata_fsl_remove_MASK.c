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
struct sata_fsl_host_priv {int /*<<< orphan*/  hcr_base; int /*<<< orphan*/  irq; } ;
struct of_device {int /*<<< orphan*/  dev; } ;
struct ata_host {struct sata_fsl_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 struct ata_host* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sata_fsl_host_priv*) ; 

__attribute__((used)) static int FUNC6(struct of_device *ofdev)
{
	struct ata_host *host = FUNC1(&ofdev->dev);
	struct sata_fsl_host_priv *host_priv = host->private_data;

	FUNC0(host);

	FUNC2(&ofdev->dev, NULL);

	FUNC4(host_priv->irq);
	FUNC3(host_priv->hcr_base);
	FUNC5(host_priv);

	return 0;
}