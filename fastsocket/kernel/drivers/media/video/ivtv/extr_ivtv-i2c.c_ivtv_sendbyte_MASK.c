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
 int FUNC2 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int) ; 

__attribute__((used)) static int FUNC7(struct ivtv *itv, unsigned char byte)
{
	int i, bit;

	FUNC0("write %x\n",byte);
	for (i = 0; i < 8; ++i, byte<<=1) {
		FUNC3(itv, 0);
		if (!FUNC5(itv, 0)) {
			FUNC1("Error setting SCL low\n");
			return -EREMOTEIO;
		}
		bit = (byte>>7)&1;
		FUNC4(itv, bit);
		if (!FUNC6(itv, bit)) {
			FUNC1("Error setting SDA\n");
			return -EREMOTEIO;
		}
		FUNC3(itv, 1);
		if (!FUNC5(itv, 1)) {
			FUNC1("Slave not ready for bit\n");
			return -EREMOTEIO;
		}
	}
	FUNC3(itv, 0);
	if (!FUNC5(itv, 0)) {
		FUNC1("Error setting SCL low\n");
		return -EREMOTEIO;
	}
	return FUNC2(itv);
}