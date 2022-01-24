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
struct omap2_mcspi {int /*<<< orphan*/  fck; int /*<<< orphan*/  ick; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap2_mcspi*) ; 

__attribute__((used)) static int FUNC2(struct omap2_mcspi *mcspi)
{
	if (FUNC0(mcspi->ick))
		return -ENODEV;
	if (FUNC0(mcspi->fck))
		return -ENODEV;

	FUNC1(mcspi);

	return 0;
}