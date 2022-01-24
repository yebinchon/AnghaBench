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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TIF_POLLING_NRFLAG ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(void)
{
	FUNC10(TIF_POLLING_NRFLAG);

	while (1) {
		FUNC12(1);
		if (!FUNC3()) {
			while (!FUNC3()) {
				FUNC4();
				FUNC0();

				if (FUNC2()) {
					FUNC1();
					FUNC5();
					FUNC8();
				}
			}

			FUNC1();
		}

		FUNC5();
		FUNC11();
		FUNC7();
		FUNC9();
		FUNC6();
	}
}