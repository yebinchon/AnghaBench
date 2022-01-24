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
struct gameport {int dummy; } ;

/* Variables and functions */
 int GRIP_LENGTH_GPP ; 
 int /*<<< orphan*/  GRIP_STROBE_GPP ; 
 int FUNC0 (struct gameport*) ; 
 int FUNC1 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gameport *gameport, int shift, unsigned int *data)
{
	unsigned long flags;
	unsigned char u, v;
	unsigned int t;
	int i;

	int strobe = FUNC1(gameport, GRIP_STROBE_GPP);

	data[0] = 0;
	t = strobe;
	i = 0;

	FUNC3(flags);

	v = FUNC0(gameport) >> shift;

	do {
		t--;
		u = v; v = (FUNC0(gameport) >> shift) & 3;
		if (~v & u & 1) {
			data[0] |= (v >> 1) << i++;
			t = strobe;
		}
	} while (i < GRIP_LENGTH_GPP && t > 0);

	FUNC2(flags);

	if (i < GRIP_LENGTH_GPP) return -1;

	for (i = 0; i < GRIP_LENGTH_GPP && (data[0] & 0xfe4210) ^ 0x7c0000; i++)
		data[0] = data[0] >> 1 | (data[0] & 1) << (GRIP_LENGTH_GPP - 1);

	return -(i == GRIP_LENGTH_GPP);
}