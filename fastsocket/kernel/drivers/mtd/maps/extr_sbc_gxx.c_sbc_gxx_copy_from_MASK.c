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
struct map_info {int dummy; } ;
typedef  long ssize_t ;

/* Variables and functions */
 unsigned long WINDOW_LENGTH ; 
 unsigned long WINDOW_MASK ; 
 scalar_t__ iomapadr ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,unsigned long) ; 
 int /*<<< orphan*/  sbc_gxx_spin ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
	while(len) {
		unsigned long thislen = len;
		if (len > (WINDOW_LENGTH - (from & WINDOW_MASK)))
			thislen = WINDOW_LENGTH-(from & WINDOW_MASK);

		FUNC2(&sbc_gxx_spin);
		FUNC1(map, from);
		FUNC0(to, iomapadr + (from & WINDOW_MASK), thislen);
		FUNC3(&sbc_gxx_spin);
		to += thislen;
		from += thislen;
		len -= thislen;
	}
}