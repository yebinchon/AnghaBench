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
struct fw_descriptor {size_t length; int* data; scalar_t__ immediate; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  card_mutex ; 
 int config_rom_length ; 
 int /*<<< orphan*/  descriptor_count ; 
 int /*<<< orphan*/  descriptor_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fw_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct fw_descriptor *desc)
{
	size_t i;
	int ret;

	/*
	 * Check descriptor is valid; the length of all blocks in the
	 * descriptor has to add up to exactly the length of the
	 * block.
	 */
	i = 0;
	while (i < desc->length)
		i += (desc->data[i] >> 16) + 1;

	if (i != desc->length)
		return -EINVAL;

	FUNC1(&card_mutex);

	if (config_rom_length + FUNC3(desc) > 256) {
		ret = -EBUSY;
	} else {
		FUNC0(&desc->link, &descriptor_list);
		config_rom_length += FUNC3(desc);
		descriptor_count++;
		if (desc->immediate > 0)
			descriptor_count++;
		FUNC4();
		ret = 0;
	}

	FUNC2(&card_mutex);

	return ret;
}