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
struct pvr2_hdw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_hdw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*,int,int) ; 

__attribute__((used)) static void FUNC2(struct pvr2_hdw *hdw, int onoff)
{
	/* change some GPIO data
	 *
	 * note: bit d7 of dir appears to control the LED,
	 * so we shut it off here.
	 *
	 */
	if (onoff) {
		FUNC0(hdw, 0xffffffff, 0x00000481);
	} else {
		FUNC0(hdw, 0xffffffff, 0x00000401);
	}
	FUNC1(hdw, 0xffffffff, 0x00000000);
}