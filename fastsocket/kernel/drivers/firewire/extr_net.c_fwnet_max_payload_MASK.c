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

/* Variables and functions */
 int RFC2374_FRAG_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 

__attribute__((used)) static unsigned FUNC2(unsigned max_rec, unsigned speed)
{
	max_rec = FUNC1(max_rec, speed + 8);
	max_rec = FUNC1(max_rec, 0xbU); /* <= 4096 */
	if (max_rec < 8) {
		FUNC0("max_rec %x out of range\n", max_rec);
		max_rec = 8;
	}

	return (1 << (max_rec + 1)) - RFC2374_FRAG_HDR_SIZE;
}