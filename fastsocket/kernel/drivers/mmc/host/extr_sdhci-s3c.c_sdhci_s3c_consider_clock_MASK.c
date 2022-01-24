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
struct sdhci_s3c {TYPE_1__* pdev; struct clk** clk_bus; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int UINT_MAX ; 
 unsigned long FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned long,unsigned int,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC2(struct sdhci_s3c *ourhost,
					     unsigned int src,
					     unsigned int wanted)
{
	unsigned long rate;
	struct clk *clksrc = ourhost->clk_bus[src];
	int div;

	if (!clksrc)
		return UINT_MAX;

	rate = FUNC0(clksrc);

	for (div = 1; div < 256; div *= 2) {
		if ((rate / div) <= wanted)
			break;
	}

	FUNC1(&ourhost->pdev->dev, "clk %d: rate %ld, want %d, got %ld\n",
		src, rate, wanted, rate / div);

	return (wanted - (rate / div));
}