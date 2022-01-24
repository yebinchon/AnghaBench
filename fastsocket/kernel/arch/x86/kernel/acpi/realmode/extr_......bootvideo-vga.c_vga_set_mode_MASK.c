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
struct mode_info {int mode; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
#define  VIDEO_80x25 134 
#define  VIDEO_80x28 133 
#define  VIDEO_80x30 132 
#define  VIDEO_80x34 131 
#define  VIDEO_80x43 130 
#define  VIDEO_80x60 129 
#define  VIDEO_8POINT 128 
 int /*<<< orphan*/  force_x ; 
 int /*<<< orphan*/  force_y ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct mode_info *mode)
{
	/* Set the basic mode */
	FUNC6();

	/* Override a possibly broken BIOS */
	force_x = mode->x;
	force_y = mode->y;

	switch (mode->mode) {
	case VIDEO_80x25:
		break;
	case VIDEO_8POINT:
		FUNC5();
		break;
	case VIDEO_80x43:
		FUNC3();
		break;
	case VIDEO_80x28:
		FUNC0();
		break;
	case VIDEO_80x30:
		FUNC1();
		break;
	case VIDEO_80x34:
		FUNC2();
		break;
	case VIDEO_80x60:
		FUNC4();
		break;
	}

	return 0;
}