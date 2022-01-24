#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sa1100_irda {int speed; int hscr0; int /*<<< orphan*/  dev; TYPE_1__* pdata; int /*<<< orphan*/  rxdma; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_speed ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int HSCR0_HSSP ; 
 int HSCR0_UART ; 
 int /*<<< orphan*/  FUNC0 (struct sa1100_irda*) ; 
 int Ser2HSCR0 ; 
 int Ser2HSSR0 ; 
 int Ser2UTCR1 ; 
 int Ser2UTCR2 ; 
 int Ser2UTCR3 ; 
 int Ser2UTSR0 ; 
 int UTCR3_RIE ; 
 int UTCR3_RXE ; 
 int UTCR3_TXE ; 
 int UTSR0_RBB ; 
 int UTSR0_REB ; 
 int UTSR0_RID ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct sa1100_irda*) ; 
 int /*<<< orphan*/  FUNC4 (struct sa1100_irda*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct sa1100_irda *si, int speed)
{
	unsigned long flags;
	int brd, ret = -EINVAL;

	switch (speed) {
	case 9600:	case 19200:	case 38400:
	case 57600:	case 115200:
		brd = 3686400 / (16 * speed) - 1;

		/*
		 * Stop the receive DMA.
		 */
		if (FUNC0(si))
			FUNC5(si->rxdma);

		FUNC2(flags);

		Ser2UTCR3 = 0;
		Ser2HSCR0 = HSCR0_UART;

		Ser2UTCR1 = brd >> 8;
		Ser2UTCR2 = brd;

		/*
		 * Clear status register
		 */
		Ser2UTSR0 = UTSR0_REB | UTSR0_RBB | UTSR0_RID;
		Ser2UTCR3 = UTCR3_RIE | UTCR3_RXE | UTCR3_TXE;

		if (si->pdata->set_speed)
			si->pdata->set_speed(si->dev, speed);

		si->speed = speed;

		FUNC1(flags);
		ret = 0;
		break;

	case 4000000:
		FUNC2(flags);

		si->hscr0 = 0;

		Ser2HSSR0 = 0xff;
		Ser2HSCR0 = si->hscr0 | HSCR0_HSSP;
		Ser2UTCR3 = 0;

		si->speed = speed;

		if (si->pdata->set_speed)
			si->pdata->set_speed(si->dev, speed);

		FUNC3(si);
		FUNC4(si);

		FUNC1(flags);

		break;

	default:
		break;
	}

	return ret;
}