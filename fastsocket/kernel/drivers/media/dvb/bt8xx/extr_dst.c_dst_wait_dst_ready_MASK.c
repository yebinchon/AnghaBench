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
typedef  int u8 ;
struct dst_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  DST_NOTICE ; 
 int RDC_8820_PIO_0_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC1 (struct dst_state*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC3(struct dst_state *state, u8 delay_mode)
{
	u8 reply;
	int i;

	for (i = 0; i < 200; i++) {
		if (FUNC1(state, &reply) < 0) {
			FUNC0(verbose, DST_ERROR, 1, "dst_gpio_inb ERROR !");
			return -1;
		}
		if ((reply & RDC_8820_PIO_0_ENABLE) == 0) {
			FUNC0(verbose, DST_INFO, 1, "dst wait ready after %d", i);
			return 1;
		}
		FUNC2(10);
	}
	FUNC0(verbose, DST_NOTICE, 1, "dst wait NOT ready after %d", i);

	return 0;
}