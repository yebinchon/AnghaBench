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
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned char FUNC2 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int) ; 

__attribute__((used)) static int FUNC7(struct ivtv *itv, unsigned char *byte, int nack)
{
	int i;

	*byte = 0;

	FUNC5(itv, 1);
	FUNC3(itv);
	for (i = 0; i < 8; ++i) {
		FUNC4(itv, 0);
		FUNC3(itv);
		FUNC4(itv, 1);
		if (!FUNC6(itv, 1)) {
			FUNC1("Error setting SCL high\n");
			return -EREMOTEIO;
		}
		*byte = ((*byte)<<1)|FUNC2(itv);
	}
	FUNC4(itv, 0);
	FUNC3(itv);
	FUNC5(itv, nack);
	FUNC3(itv);
	FUNC4(itv, 1);
	FUNC3(itv);
	FUNC4(itv, 0);
	FUNC3(itv);
	FUNC0("read %x\n",*byte);
	return 0;
}