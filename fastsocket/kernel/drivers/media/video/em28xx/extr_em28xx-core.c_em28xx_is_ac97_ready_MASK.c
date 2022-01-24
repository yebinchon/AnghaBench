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
struct em28xx {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EM28XX_R43_AC97BUSY ; 
 int FUNC0 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct em28xx *dev)
{
	int ret, i;

	/* Wait up to 50 ms for AC97 command to complete */
	for (i = 0; i < 10; i++, FUNC2(5)) {
		ret = FUNC0(dev, EM28XX_R43_AC97BUSY);
		if (ret < 0)
			return ret;

		if (!(ret & 0x01))
			return 0;
	}

	FUNC1("AC97 command still being executed: not handled properly!\n");
	return -EBUSY;
}