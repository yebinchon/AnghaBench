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
struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int GC_N64_CLOCK ; 
 int /*<<< orphan*/  GC_N64_DELAY ; 
 int /*<<< orphan*/  GC_N64_DWS ; 
 int GC_N64_LENGTH ; 
 int GC_N64_OUT ; 
 int GC_N64_POWER_R ; 
 int GC_N64_POWER_W ; 
 int GC_N64_REQUEST ; 
 int GC_N64_REQUEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gc *gc, unsigned char *data)
{
	int i;
	unsigned long flags;

/*
 * Request the pad to transmit data
 */

	FUNC1(flags);
	for (i = 0; i < GC_N64_REQUEST_LENGTH; i++) {
		FUNC3(gc->pd->port, GC_N64_POWER_W | ((GC_N64_REQUEST >> i) & 1 ? GC_N64_OUT : 0));
		FUNC4(GC_N64_DWS);
	}
	FUNC0(flags);

/*
 * Wait for the pad response to be loaded into the 33-bit register of the adapter
 */

	FUNC4(GC_N64_DELAY);

/*
 * Grab data (ignoring the last bit, which is a stop bit)
 */

	for (i = 0; i < GC_N64_LENGTH; i++) {
		FUNC3(gc->pd->port, GC_N64_POWER_R);
		data[i] = FUNC2(gc->pd->port);
		FUNC3(gc->pd->port, GC_N64_POWER_R | GC_N64_CLOCK);
	 }

/*
 * We must wait 200 ms here for the controller to reinitialize before the next read request.
 * No worries as long as gc_read is polled less frequently than this.
 */

}