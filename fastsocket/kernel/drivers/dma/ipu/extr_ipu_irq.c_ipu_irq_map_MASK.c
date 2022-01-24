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
struct ipu_irq_map {int irq; } ;
struct TYPE_2__ {unsigned int source; int irq; scalar_t__ bank; } ;

/* Variables and functions */
 int CONFIG_MX3_IPU_IRQS ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  bank_lock ; 
 scalar_t__ irq_bank ; 
 TYPE_1__* irq_map ; 
 int /*<<< orphan*/  map_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipu_irq_map* FUNC7 (unsigned int) ; 

int FUNC8(unsigned int source)
{
	int i, ret = -ENOMEM;
	struct ipu_irq_map *map;

	FUNC0();

	FUNC1(&map_lock);
	map = FUNC7(source);
	if (map) {
		FUNC4("IPU: Source %u already mapped to IRQ %u\n", source, map->irq);
		ret = -EBUSY;
		goto out;
	}

	for (i = 0; i < CONFIG_MX3_IPU_IRQS; i++) {
		if (irq_map[i].source < 0) {
			unsigned long lock_flags;

			FUNC5(&bank_lock, lock_flags);
			irq_map[i].source = source;
			irq_map[i].bank = irq_bank + source / 32;
			FUNC6(&bank_lock, lock_flags);

			ret = irq_map[i].irq;
			FUNC3("IPU: mapped source %u to IRQ %u\n",
				 source, ret);
			break;
		}
	}
out:
	FUNC2(&map_lock);

	if (ret < 0)
		FUNC4("IPU: couldn't map source %u: %d\n", source, ret);

	return ret;
}