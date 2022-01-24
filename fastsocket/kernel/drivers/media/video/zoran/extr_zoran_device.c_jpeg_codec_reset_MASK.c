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
struct TYPE_2__ {int* gpcs; int /*<<< orphan*/ * gpio; } ;
struct zoran {TYPE_1__ card; } ;

/* Variables and functions */
 size_t GPCS_JPEG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct zoran*,int /*<<< orphan*/ ,int) ; 
 size_t ZR_GPIO_JPEG_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct zoran*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zoran*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4 (struct zoran *zr)
{
	/* Take the codec out of sleep */
	FUNC1(zr, 0);

	if (zr->card.gpcs[GPCS_JPEG_RESET] != 0xff) {
		FUNC2(zr, zr->card.gpcs[GPCS_JPEG_RESET], 0,
				  0);
		FUNC3(2);
	} else {
		FUNC0(zr, zr->card.gpio[ZR_GPIO_JPEG_RESET], 0);
		FUNC3(2);
		FUNC0(zr, zr->card.gpio[ZR_GPIO_JPEG_RESET], 1);
		FUNC3(2);
	}

	return 0;
}