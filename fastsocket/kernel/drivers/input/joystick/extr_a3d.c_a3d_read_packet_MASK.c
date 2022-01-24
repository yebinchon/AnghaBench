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
 int /*<<< orphan*/  A3D_MAX_START ; 
 int /*<<< orphan*/  A3D_MAX_STROBE ; 
 unsigned char FUNC0 (struct gameport*) ; 
 unsigned int FUNC1 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gameport *gameport, int length, char *data)
{
	unsigned long flags;
	unsigned char u, v;
	unsigned int t, s;
	int i;

	i = 0;
	t = FUNC1(gameport, A3D_MAX_START);
	s = FUNC1(gameport, A3D_MAX_STROBE);

	FUNC4(flags);
	FUNC2(gameport);
	v = FUNC0(gameport);

	while (t > 0 && i < length) {
		t--;
		u = v; v = FUNC0(gameport);
		if (~v & u & 0x10) {
			data[i++] = v >> 5;
			t = s;
		}
	}

	FUNC3(flags);

	return i;
}