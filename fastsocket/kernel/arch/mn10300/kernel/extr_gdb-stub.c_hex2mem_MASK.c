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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int*) ; 
 scalar_t__ FUNC1 (int,int*) ; 
 scalar_t__ FUNC2 (int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
const char *FUNC4(const char *buf, void *_mem, int count, int may_fault)
{
	u8 *mem = _mem;
	union {
		u32 val;
		u8 b[4];
	} ch;

	if ((u32) mem & 1 && count >= 1) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		if (FUNC0(ch.val, mem) != 0)
			return 0;
		mem++;
		count--;
	}

	if ((u32) mem & 3 && count >= 2) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		ch.b[1]  = FUNC3(*buf++) << 4;
		ch.b[1] |= FUNC3(*buf++);
		if (FUNC2(ch.val, mem) != 0)
			return 0;
		mem += 2;
		count -= 2;
	}

	while (count >= 4) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		ch.b[1]  = FUNC3(*buf++) << 4;
		ch.b[1] |= FUNC3(*buf++);
		ch.b[2]  = FUNC3(*buf++) << 4;
		ch.b[2] |= FUNC3(*buf++);
		ch.b[3]  = FUNC3(*buf++) << 4;
		ch.b[3] |= FUNC3(*buf++);
		if (FUNC1(ch.val, mem) != 0)
			return 0;
		mem += 4;
		count -= 4;
	}

	if (count >= 2) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		ch.b[1]  = FUNC3(*buf++) << 4;
		ch.b[1] |= FUNC3(*buf++);
		if (FUNC2(ch.val, mem) != 0)
			return 0;
		mem += 2;
		count -= 2;
	}

	if (count >= 1) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		if (FUNC0(ch.val, mem) != 0)
			return 0;
	}

	return buf;
}