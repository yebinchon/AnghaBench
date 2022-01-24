#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pinmux_info {int gpio_data_size; int /*<<< orphan*/  mark; int /*<<< orphan*/  data; scalar_t__* gpio_data; TYPE_1__* gpios; } ;
typedef  scalar_t__ pinmux_enum_t ;
struct TYPE_2__ {scalar_t__ enum_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct pinmux_info *gpioc, unsigned gpio,
			    int pos, pinmux_enum_t *enum_idp)
{
	pinmux_enum_t enum_id = gpioc->gpios[gpio].enum_id;
	pinmux_enum_t *data = gpioc->gpio_data;
	int k;

	if (!FUNC0(enum_id, &gpioc->data)) {
		if (!FUNC0(enum_id, &gpioc->mark)) {
			FUNC1("non data/mark enum_id for gpio %d\n", gpio);
			return -1;
		}
	}

	if (pos) {
		*enum_idp = data[pos + 1];
		return pos + 1;
	}

	for (k = 0; k < gpioc->gpio_data_size; k++) {
		if (data[k] == enum_id) {
			*enum_idp = data[k + 1];
			return k + 1;
		}
	}

	FUNC1("cannot locate data/mark enum_id for gpio %d\n", gpio);
	return -1;
}