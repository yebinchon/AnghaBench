#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  loadflags; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUIET_FLAG ; 
 TYPE_2__ boot_params ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 

int FUNC15(void)
{
	/* First, copy the boot header into the "zeropage" */
	FUNC1();

	/* End of heap check */
	FUNC5();

	/* Make sure we have all the proper CPU support */
	if (FUNC14()) {
		FUNC7("Unable to boot - please use a kernel appropriate "
		     "for your CPU.\n");
		FUNC3();
	}

	/* Tell the BIOS what CPU mode we intend to run in. */
	FUNC12();

	/* Detect memory layout */
	FUNC2();

	/* Set keyboard repeat rate (why?) */
	FUNC6();

	/* Query MCA information */
	FUNC11();

	/* Query Intel SpeedStep (IST) information */
	FUNC10();

	/* Query APM information */
#if defined(CONFIG_APM) || defined(CONFIG_APM_MODULE)
	query_apm_bios();
#endif

	/* Query EDD information */
#if defined(CONFIG_EDD) || defined(CONFIG_EDD_MODULE)
	query_edd();
#endif

	/* Set the video mode */
	FUNC13();

	/* Parse command line for 'quiet' and pass it to decompressor. */
	if (FUNC0("quiet"))
		boot_params.hdr.loadflags |= QUIET_FLAG;

	/* Do the last things and invoke protected mode */
	FUNC4();
}