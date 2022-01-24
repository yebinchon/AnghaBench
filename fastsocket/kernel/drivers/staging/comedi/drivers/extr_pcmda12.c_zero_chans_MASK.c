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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int CHANS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{				/* sets up an
				   ASIC chip to defaults */
	int i;
	for (i = 0; i < CHANS; ++i) {
/*      /\* do this as one instruction?? *\/ */
/*      outw(0, LSB_PORT(chan)); */
		FUNC3(0, FUNC0(i));
		FUNC3(0, FUNC1(i));
	}
	FUNC2(FUNC0(0));	/* update chans. */
}