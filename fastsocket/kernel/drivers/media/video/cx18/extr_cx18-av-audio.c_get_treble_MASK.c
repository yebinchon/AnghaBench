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
struct cx18 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx18*,int) ; 

__attribute__((used)) static int FUNC1(struct cx18 *cx)
{
	/* treble is 49 steps +12dB to -12dB */

	/* check PATH1_EQ_TREBLE_VOL */
	int treble = FUNC0(cx, 0x8db) & 0x3f;
	treble = (((48 - treble) * 0xffff) + 47) / 48;
	return treble;
}