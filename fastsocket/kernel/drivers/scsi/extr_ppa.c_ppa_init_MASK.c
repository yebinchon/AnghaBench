#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned short base; } ;
typedef  TYPE_1__ ppa_struct ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECT_NORMAL ; 
 int EIO ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned short,int) ; 

__attribute__((used)) static int FUNC7(ppa_struct *dev)
{
	int retv;
	unsigned short ppb = dev->base;

	FUNC2(dev);
	FUNC1(dev, CONNECT_NORMAL);

	retv = 2;		/* Failed */

	FUNC6(ppb, 0xe);
	if ((FUNC4(ppb) & 0x08) == 0x08)
		retv--;

	FUNC6(ppb, 0xc);
	if ((FUNC4(ppb) & 0x08) == 0x00)
		retv--;

	if (!retv)
		FUNC3(ppb);
	FUNC5(1000);		/* Allow devices to settle down */
	FUNC2(dev);
	FUNC5(1000);		/* Another delay to allow devices to settle */

	if (retv)
		return -EIO;

	return FUNC0(dev);
}