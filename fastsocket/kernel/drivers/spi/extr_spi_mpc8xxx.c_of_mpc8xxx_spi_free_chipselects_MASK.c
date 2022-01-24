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
struct mpc8xxx_spi_probe_info {int /*<<< orphan*/ * alow_flags; int /*<<< orphan*/ * gpios; } ;
struct fsl_spi_platform_data {int max_chipselect; } ;
struct device {struct fsl_spi_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mpc8xxx_spi_probe_info* FUNC3 (struct fsl_spi_platform_data*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct fsl_spi_platform_data *pdata = dev->platform_data;
	struct mpc8xxx_spi_probe_info *pinfo = FUNC3(pdata);
	int i;

	if (!pinfo->gpios)
		return 0;

	for (i = 0; i < pdata->max_chipselect; i++) {
		if (FUNC1(pinfo->gpios[i]))
			FUNC0(pinfo->gpios[i]);
	}

	FUNC2(pinfo->gpios);
	FUNC2(pinfo->alow_flags);
	return 0;
}