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
struct desc_ptr {unsigned long address; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct desc_ptr*) ; 

__attribute__((used)) static void FUNC1(void *newgdt, __u16 limit)
{
	struct desc_ptr curgdt;

	/* ia32 supports unaligned loads & stores */
	curgdt.size    = limit;
	curgdt.address = (unsigned long)newgdt;

	FUNC0(&curgdt);
}