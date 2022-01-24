#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; scalar_t__ msb_right; } ;
struct TYPE_5__ {TYPE_1__ green; } ;
struct TYPE_6__ {TYPE_2__ var; } ;
struct clcd_fb {TYPE_3__ fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NETX_PIO_OEPIO ; 
 int /*<<< orphan*/  NETX_PIO_OUTPIO ; 
 int /*<<< orphan*/  NETX_SYSTEM_IOC_ACCESS_KEY ; 
 int /*<<< orphan*/  NETX_SYSTEM_IOC_CR ; 
 int FUNC1 (struct clcd_fb*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clcd_fb *fb)
{
	unsigned int val;

	fb->fb.var.green.length = 5;
	fb->fb.var.green.msb_right = 0;

	/* enable asic control */
	val = FUNC2(NETX_SYSTEM_IOC_ACCESS_KEY);
	FUNC3(val, NETX_SYSTEM_IOC_ACCESS_KEY);

	FUNC3(3, NETX_SYSTEM_IOC_CR);

	/* GPIO 14 is used for display enable on newer boards */
	FUNC3(9, FUNC0(14));

	val = FUNC2(NETX_PIO_OUTPIO);
	FUNC3(val | 1, NETX_PIO_OUTPIO);

	val = FUNC2(NETX_PIO_OEPIO);
	FUNC3(val | 1, NETX_PIO_OEPIO);
	return FUNC1(fb);
}