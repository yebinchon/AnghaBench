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
typedef  scalar_t__ uint32_t ;
struct pxa3xx_nand_platform_data {int num_flash; struct pxa3xx_nand_flash* flash; scalar_t__ keep_config; } ;
struct pxa3xx_nand_info {TYPE_1__* pdev; } ;
struct pxa3xx_nand_flash {scalar_t__ chip_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct pxa3xx_nand_flash**) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct pxa3xx_nand_info*,scalar_t__*) ; 
 struct pxa3xx_nand_flash** builtin_flash_types ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct pxa3xx_nand_info*,struct pxa3xx_nand_flash const*) ; 
 scalar_t__ FUNC4 (struct pxa3xx_nand_info*) ; 

__attribute__((used)) static int FUNC5(struct pxa3xx_nand_info *info,
				    const struct pxa3xx_nand_platform_data *pdata)
{
	const struct pxa3xx_nand_flash *f;
	uint32_t id = -1;
	int i;

	if (pdata->keep_config)
		if (FUNC4(info) == 0)
			return 0;

	for (i = 0; i<pdata->num_flash; ++i) {
		f = pdata->flash + i;

		if (FUNC3(info, f))
			continue;

		if (FUNC1(info, &id))
			continue;

		if (id == f->chip_id)
			return 0;
	}

#ifdef CONFIG_MTD_NAND_PXA3xx_BUILTIN
	for (i = 0; i < ARRAY_SIZE(builtin_flash_types); i++) {

		f = builtin_flash_types[i];

		if (pxa3xx_nand_config_flash(info, f))
			continue;

		if (__readid(info, &id))
			continue;

		if (id == f->chip_id)
			return 0;
	}
#endif

	FUNC2(&info->pdev->dev,
		 "failed to detect configured nand flash; found %04x instead of\n",
		 id);
	return -ENODEV;
}