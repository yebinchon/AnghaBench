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
struct ivtv {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int) ; 

__attribute__((used)) static int FUNC8(struct ivtv *itv)
{
	int i;

	if (FUNC2(itv) != 0) {
		FUNC0("SCL not low when stopping\n");
		FUNC4(itv, 0);
		if (!FUNC6(itv, 0)) {
			FUNC1("SCL could not be set low\n");
		}
	}
	FUNC5(itv, 0);
	FUNC3(itv);
	FUNC4(itv, 1);
	if (!FUNC6(itv, 1)) {
		FUNC1("SCL could not be set high\n");
		return -EREMOTEIO;
	}
	FUNC3(itv);
	FUNC5(itv, 1);
	if (!FUNC7(itv, 1)) {
		FUNC1("resetting I2C\n");
		for (i = 0; i < 16; ++i) {
			FUNC4(itv, 0);
			FUNC3(itv);
			FUNC4(itv, 1);
			FUNC3(itv);
			FUNC5(itv, 1);
		}
		FUNC7(itv, 1);
		return -EREMOTEIO;
	}
	return 0;
}