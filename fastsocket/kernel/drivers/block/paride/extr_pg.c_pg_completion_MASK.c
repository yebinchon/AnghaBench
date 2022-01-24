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
struct pg {int /*<<< orphan*/  pi; scalar_t__ dlen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_BUSY ; 
 int STAT_DRQ ; 
 int STAT_ERR ; 
 int STAT_READY ; 
 int FUNC0 (struct pg*,int /*<<< orphan*/ ,int,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct pg*,int) ; 
 int verbose ; 

__attribute__((used)) static int FUNC6(struct pg *dev, char *buf, unsigned long tmo)
{
	int r, d, n, p;

	r = FUNC0(dev, STAT_BUSY, STAT_DRQ | STAT_READY | STAT_ERR,
		    tmo, "completion");

	dev->dlen = 0;

	while (FUNC5(dev, 7) & STAT_DRQ) {
		d = (FUNC5(dev, 4) + 256 * FUNC5(dev, 5));
		n = ((d + 3) & 0xfffc);
		p = FUNC5(dev, 2) & 3;
		if (p == 0)
			FUNC3(dev->pi, buf, n);
		if (p == 2)
			FUNC2(dev->pi, buf, n);
		if (verbose > 1)
			FUNC4("%s: %s %d bytes\n", dev->name,
			       p ? "Read" : "Write", n);
		dev->dlen += (1 - p) * d;
		buf += d;
		r = FUNC0(dev, STAT_BUSY, STAT_DRQ | STAT_READY | STAT_ERR,
			    tmo, "completion");
	}

	FUNC1(dev->pi);

	return r;
}