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
struct fw_descriptor {scalar_t__ immediate; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  card_mutex ; 
 int /*<<< orphan*/  config_rom_length ; 
 int /*<<< orphan*/  descriptor_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct fw_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct fw_descriptor *desc)
{
	FUNC1(&card_mutex);

	FUNC0(&desc->link);
	config_rom_length -= FUNC3(desc);
	descriptor_count--;
	if (desc->immediate > 0)
		descriptor_count--;
	FUNC4();

	FUNC2(&card_mutex);
}