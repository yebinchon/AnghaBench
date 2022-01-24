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
 int /*<<< orphan*/  GF2K_START ; 
 int /*<<< orphan*/  GF2K_STROBE ; 
 unsigned char FUNC0 (struct gameport*) ; 
 unsigned int FUNC1 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gameport *gameport, int length, char *data)
{
	unsigned char u, v;
	int i;
	unsigned int t, p;
	unsigned long flags;

	t = FUNC1(gameport, GF2K_START);
	p = FUNC1(gameport, GF2K_STROBE);

	i = 0;

	FUNC4(flags);

	FUNC2(gameport);
	v = FUNC0(gameport);

	while (t > 0 && i < length) {
		t--; u = v;
		v = FUNC0(gameport);
		if (v & ~u & 0x10) {
			data[i++] = v >> 5;
			t = p;
		}
	}

	FUNC3(flags);

	return i;
}