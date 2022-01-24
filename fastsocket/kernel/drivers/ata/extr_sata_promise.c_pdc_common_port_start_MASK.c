#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pdc_port_priv {int /*<<< orphan*/  pkt; int /*<<< orphan*/  pkt_dma; } ;
struct device {int dummy; } ;
struct ata_port {struct pdc_port_priv* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ata_port*) ; 
 struct pdc_port_priv* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_port *ap)
{
	struct device *dev = ap->host->dev;
	struct pdc_port_priv *pp;
	int rc;

	rc = FUNC0(ap);
	if (rc)
		return rc;

	pp = FUNC1(dev, sizeof(*pp), GFP_KERNEL);
	if (!pp)
		return -ENOMEM;

	pp->pkt = FUNC2(dev, 128, &pp->pkt_dma, GFP_KERNEL);
	if (!pp->pkt)
		return -ENOMEM;

	ap->private_data = pp;

	return 0;
}