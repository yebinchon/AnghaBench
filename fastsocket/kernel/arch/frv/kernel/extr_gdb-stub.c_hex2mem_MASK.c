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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(const char *buf, void *_mem, int count)
{
	uint8_t *mem = _mem;
	union {
		uint32_t l;
		uint16_t w;
		uint8_t  b[4];
	} ch;

	if ((u32)mem&1 && count>=1) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		if (!FUNC0(mem,ch.b[0]))
			return NULL;
		mem++;
		count--;
	}

	if ((u32)mem&3 && count>=2) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		ch.b[1]  = FUNC3(*buf++) << 4;
		ch.b[1] |= FUNC3(*buf++);
		if (!FUNC2(mem,ch.w))
			return NULL;
		mem += 2;
		count -= 2;
	}

	while (count>=4) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		ch.b[1]  = FUNC3(*buf++) << 4;
		ch.b[1] |= FUNC3(*buf++);
		ch.b[2]  = FUNC3(*buf++) << 4;
		ch.b[2] |= FUNC3(*buf++);
		ch.b[3]  = FUNC3(*buf++) << 4;
		ch.b[3] |= FUNC3(*buf++);
		if (!FUNC1(mem,ch.l))
			return NULL;
		mem += 4;
		count -= 4;
	}

	if (count>=2) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		ch.b[1]  = FUNC3(*buf++) << 4;
		ch.b[1] |= FUNC3(*buf++);
		if (!FUNC2(mem,ch.w))
			return NULL;
		mem += 2;
		count -= 2;
	}

	if (count>=1) {
		ch.b[0]  = FUNC3(*buf++) << 4;
		ch.b[0] |= FUNC3(*buf++);
		if (!FUNC0(mem,ch.b[0]))
			return NULL;
	}

	return (char *) buf;
}