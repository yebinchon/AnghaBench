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
struct ivtv {TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ IVTV_CARD_PVR_150 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_DIR ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct ivtv *itv)
{
	int curdir, curout;

	if (itv->card->type != IVTV_CARD_PVR_150)
		return;
	FUNC0("Resetting PVR150 IR\n");
	curout = FUNC2(IVTV_REG_GPIO_OUT);
	curdir = FUNC2(IVTV_REG_GPIO_DIR);
	curdir |= 0x80;
	FUNC4(curdir, IVTV_REG_GPIO_DIR);
	curout = (curout & ~0xF) | 1;
	FUNC4(curout, IVTV_REG_GPIO_OUT);
	/* We could use something else for smaller time */
	FUNC3(FUNC1(1));
	curout |= 2;
	FUNC4(curout, IVTV_REG_GPIO_OUT);
	curdir &= ~0x80;
	FUNC4(curdir, IVTV_REG_GPIO_DIR);
}