#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mkiss {int rcount; scalar_t__ buffsize; unsigned char* rbuff; int /*<<< orphan*/  buflock; int /*<<< orphan*/  flags; TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXF_ERROR ; 
 int /*<<< orphan*/  AXF_ESCAPE ; 
 int /*<<< orphan*/  AXF_KEEPTEST ; 
#define  END 131 
#define  ESC 130 
#define  ESC_END 129 
#define  ESC_ESC 128 
 int /*<<< orphan*/  FUNC0 (struct mkiss*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mkiss *ax, unsigned char s)
{
	switch (s) {
	case END:
		/* drop keeptest bit = VSV */
		if (FUNC6(AXF_KEEPTEST, &ax->flags))
			FUNC1(AXF_KEEPTEST, &ax->flags);

		if (!FUNC5(AXF_ERROR, &ax->flags) && (ax->rcount > 2))
			FUNC0(ax);

		FUNC1(AXF_ESCAPE, &ax->flags);
		ax->rcount = 0;
		return;

	case ESC:
		FUNC2(AXF_ESCAPE, &ax->flags);
		return;
	case ESC_ESC:
		if (FUNC5(AXF_ESCAPE, &ax->flags))
			s = ESC;
		break;
	case ESC_END:
		if (FUNC5(AXF_ESCAPE, &ax->flags))
			s = END;
		break;
	}

	FUNC3(&ax->buflock);
	if (!FUNC6(AXF_ERROR, &ax->flags)) {
		if (ax->rcount < ax->buffsize) {
			ax->rbuff[ax->rcount++] = s;
			FUNC4(&ax->buflock);
			return;
		}

		ax->dev->stats.rx_over_errors++;
		FUNC2(AXF_ERROR, &ax->flags);
	}
	FUNC4(&ax->buflock);
}