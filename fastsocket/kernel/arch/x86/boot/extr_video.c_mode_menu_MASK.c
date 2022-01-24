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
 unsigned int SCAN ; 
 unsigned int VIDEO_CURRENT_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static unsigned int FUNC7(void)
{
	int key;
	unsigned int sel;

	FUNC6("Press <ENTER> to see video modes available, "
	     "<SPACE> to continue, or wait 30 sec\n");

	FUNC3();
	while (1) {
		key = FUNC2();
		if (key == ' ' || key == 0)
			return VIDEO_CURRENT_MODE; /* Default */
		if (key == '\r')
			break;
		FUNC5('\a');	/* Beep! */
	}


	for (;;) {
		FUNC0();

		FUNC6("Enter a video mode or \"scan\" to scan for "
		     "additional modes: ");
		sel = FUNC1();
		if (sel != SCAN)
			return sel;

		FUNC4(1);
	}
}