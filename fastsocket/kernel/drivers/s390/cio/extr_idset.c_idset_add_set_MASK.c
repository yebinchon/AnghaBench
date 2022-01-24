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
struct idset {int num_ssid; int num_id; int /*<<< orphan*/ * bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct idset *to, struct idset *from)
{
	unsigned long i, len;

	len = FUNC1(FUNC0(to->num_ssid * to->num_id),
		  FUNC0(from->num_ssid * from->num_id));
	for (i = 0; i < len ; i++)
		to->bitmap[i] |= from->bitmap[i];
}