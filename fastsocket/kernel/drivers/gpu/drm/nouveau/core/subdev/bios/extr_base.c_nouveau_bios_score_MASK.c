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
struct nouveau_bios {int size; int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,char*) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int
FUNC3(struct nouveau_bios *bios, const bool writeable)
{
	if (bios->size < 3 || !bios->data || bios->data[0] != 0x55 ||
			bios->data[1] != 0xAA) {
		FUNC1(bios, "... signature not found\n");
		return 0;
	}

	if (FUNC2(bios->data,
			FUNC0(u32, bios->data[2] * 512, bios->size))) {
		FUNC1(bios, "... checksum invalid\n");
		/* if a ro image is somewhat bad, it's probably all rubbish */
		return writeable ? 2 : 1;
	}

	FUNC1(bios, "... appears to be valid\n");
	return 3;
}