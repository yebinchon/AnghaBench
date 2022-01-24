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
 int /*<<< orphan*/  H1940_SUSPEND_CHECK ; 
 int /*<<< orphan*/  H1940_SUSPEND_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* S3C2410_GSTATUS3 ; 
 void* S3C2410_GSTATUS4 ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,void*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s3c_cpu_resume ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	/* ensure at least GSTATUS3 has the resume address */

	FUNC3(FUNC9(s3c_cpu_resume), S3C2410_GSTATUS3);

	FUNC1("GSTATUS3 0x%08x\n", FUNC2(S3C2410_GSTATUS3));
	FUNC1("GSTATUS4 0x%08x\n", FUNC2(S3C2410_GSTATUS4));

	if (FUNC5()) {
		void *base = FUNC7(H1940_SUSPEND_CHECK);
		unsigned long ptr;
		unsigned long calc = 0;

		/* generate check for the bootloader to check on resume */

		for (ptr = 0; ptr < 0x40000; ptr += 0x400)
			calc += FUNC2(base+ptr);

		FUNC3(calc, FUNC7(H1940_SUSPEND_CHECKSUM));
	}

	/* the RX3715 uses similar code and the same H1940 and the
	 * same offsets for resume and checksum pointers */

	if (FUNC6()) {
		void *base = FUNC7(H1940_SUSPEND_CHECK);
		unsigned long ptr;
		unsigned long calc = 0;

		/* generate check for the bootloader to check on resume */

		for (ptr = 0; ptr < 0x40000; ptr += 0x4)
			calc += FUNC2(base+ptr);

		FUNC3(calc, FUNC7(H1940_SUSPEND_CHECKSUM));
	}

	if ( FUNC4() )
		FUNC8(FUNC0(2), 1);

}