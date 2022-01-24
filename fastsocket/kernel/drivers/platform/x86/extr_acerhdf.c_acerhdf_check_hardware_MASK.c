#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* product; scalar_t__* version; scalar_t__* vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMI_BIOS_VERSION ; 
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 int /*<<< orphan*/  DMI_SYS_VENDOR ; 
 int /*<<< orphan*/  DRV_VER ; 
 int EINVAL ; 
 TYPE_1__* bios_cfg ; 
 TYPE_1__* bios_tbl ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* force_bios ; 
 char* force_product ; 
 scalar_t__ kernelmode ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const*) ; 
 unsigned long FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,unsigned long) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC7(void)
{
	char const *vendor, *version, *product;
	int i;
	unsigned long prod_len = 0;

	/* get BIOS data */
	vendor  = FUNC0(DMI_SYS_VENDOR);
	version = FUNC0(DMI_BIOS_VERSION);
	product = FUNC0(DMI_PRODUCT_NAME);


	FUNC2("Acer Aspire One Fan driver, v.%s\n", DRV_VER);

	if (force_bios[0]) {
		version = force_bios;
		FUNC2("forcing BIOS version: %s\n", version);
		kernelmode = 0;
	}

	if (force_product[0]) {
		product = force_product;
		FUNC2("forcing BIOS product: %s\n", product);
		kernelmode = 0;
	}

	prod_len = FUNC5(product);

	if (verbose)
		FUNC2("BIOS info: %s %s, product: %s\n",
			vendor, version, product);

	/* search BIOS version and vendor in BIOS settings table */
	for (i = 0; bios_tbl[i].version[0]; i++) {
		if (FUNC5(bios_tbl[i].product) >= prod_len &&
		    !FUNC6(bios_tbl[i].product, product,
			   FUNC5(bios_tbl[i].product)) &&
		    !FUNC4(bios_tbl[i].vendor, vendor) &&
		    !FUNC4(bios_tbl[i].version, version)) {
			bios_cfg = &bios_tbl[i];
			break;
		}
	}

	if (!bios_cfg) {
		FUNC1("unknown (unsupported) BIOS version %s/%s/%s, "
			"please report, aborting!\n", vendor, product, version);
		return -EINVAL;
	}

	/*
	 * if started with kernel mode off, prevent the kernel from switching
	 * off the fan
	 */
	if (!kernelmode) {
		FUNC3("Fan control off, to enable do:\n");
		FUNC3("echo -n \"enabled\" > "
			"/sys/class/thermal/thermal_zone0/mode\n");
	}

	return 0;
}