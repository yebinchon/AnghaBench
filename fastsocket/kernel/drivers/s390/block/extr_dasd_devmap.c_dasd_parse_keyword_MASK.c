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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SLAB_CACHE_DMA ; 
 int dasd_autodetect ; 
 int dasd_nofcx ; 
 int dasd_nopav ; 
 scalar_t__ dasd_page_cache ; 
 int dasd_probeonly ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC7( char *parsestring ) {

	char *nextcomma, *residual_str;
	int length;

	nextcomma = FUNC4(parsestring,',');
	if (nextcomma) {
		length = nextcomma - parsestring;
		residual_str = nextcomma + 1;
	} else {
		length = FUNC5(parsestring);
		residual_str = parsestring + length;
        }
	if (FUNC6("autodetect", parsestring, length) == 0) {
		dasd_autodetect = 1;
		FUNC3("The autodetection mode has been activated\n");
                return residual_str;
        }
	if (FUNC6("probeonly", parsestring, length) == 0) {
		dasd_probeonly = 1;
		FUNC3("The probeonly mode has been activated\n");
                return residual_str;
        }
	if (FUNC6("nopav", parsestring, length) == 0) {
		if (MACHINE_IS_VM)
			FUNC3("'nopav' is not supported on z/VM\n");
		else {
			dasd_nopav = 1;
			FUNC3("PAV support has be deactivated\n");
		}
		return residual_str;
	}
	if (FUNC6("nofcx", parsestring, length) == 0) {
		dasd_nofcx = 1;
		FUNC3("High Performance FICON support has been "
			"deactivated\n");
		return residual_str;
	}
	if (FUNC6("fixedbuffers", parsestring, length) == 0) {
		if (dasd_page_cache)
			return residual_str;
		dasd_page_cache =
			FUNC2("dasd_page_cache", PAGE_SIZE,
					  PAGE_SIZE, SLAB_CACHE_DMA,
					  NULL);
		if (!dasd_page_cache)
			FUNC0(DBF_WARNING, "%s", "Failed to create slab, "
				"fixed buffer mode disabled.");
		else
			FUNC0(DBF_INFO, "%s",
				 "turning on fixed buffer mode");
                return residual_str;
        }
	return FUNC1(-EINVAL);
}