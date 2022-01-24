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
struct DiskOnChip {int /*<<< orphan*/  virtadr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOCStatus ; 
 scalar_t__ FUNC0 (struct DiskOnChip*) ; 
 int /*<<< orphan*/  NOP ; 
 char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct DiskOnChip *doc, unsigned short cycles)
{
	volatile char dummy;
	int i;

	for (i = 0; i < cycles; i++) {
		if (FUNC0(doc))
			dummy = FUNC1(doc->virtadr, NOP);
		else
			dummy = FUNC1(doc->virtadr, DOCStatus);
	}

}