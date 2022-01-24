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
struct terratec {int /*<<< orphan*/  lock; scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct terratec *tt, int volume)
{
	int i;

	volume = volume + (volume * 32); /* change both channels */
	FUNC0(&tt->lock);
	for (i = 0; i < 8; i++) {
		if (volume & (0x80 >> i))
			FUNC2(0x80, tt->io + 1);
		else
			FUNC2(0x00, tt->io + 1);
	}
	FUNC1(&tt->lock);
}