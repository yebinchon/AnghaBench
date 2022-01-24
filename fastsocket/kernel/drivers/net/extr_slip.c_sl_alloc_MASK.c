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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct slip {TYPE_1__ outfill_timer; TYPE_1__ keepalive_timer; int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; struct net_device* dev; int /*<<< orphan*/  magic; int /*<<< orphan*/  flags; } ;
struct net_device {int base_addr; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  SLF_INUSE ; 
 int /*<<< orphan*/  SLIP_MAGIC ; 
 int /*<<< orphan*/  SL_MODE_DEFAULT ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct slip* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  sl_keepalive ; 
 int /*<<< orphan*/  sl_outfill ; 
 int /*<<< orphan*/  sl_setup ; 
 struct net_device** slip_devs ; 
 int slip_maxdev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static struct slip *FUNC7(dev_t line)
{
	int i;
	struct net_device *dev = NULL;
	struct slip       *sl;

	if (slip_devs == NULL)
		return NULL;	/* Master array missing ! */

	for (i = 0; i < slip_maxdev; i++) {
		dev = slip_devs[i];
		if (dev == NULL)
			break;
	}
	/* Sorry, too many, all slots in use */
	if (i >= slip_maxdev)
		return NULL;

	if (dev) {
		sl = FUNC2(dev);
		if (FUNC5(SLF_INUSE, &sl->flags)) {
			FUNC6(dev);
			dev = NULL;
			slip_devs[i] = NULL;
		}
	}

	if (!dev) {
		char name[IFNAMSIZ];
		FUNC4(name, "sl%d", i);

		dev = FUNC0(sizeof(*sl), name, sl_setup);
		if (!dev)
			return NULL;
		dev->base_addr  = i;
	}

	sl = FUNC2(dev);

	/* Initialize channel control data */
	sl->magic       = SLIP_MAGIC;
	sl->dev	      	= dev;
	FUNC3(&sl->lock);
	sl->mode        = SL_MODE_DEFAULT;
#ifdef CONFIG_SLIP_SMART
	/* initialize timer_list struct */
	init_timer(&sl->keepalive_timer);
	sl->keepalive_timer.data = (unsigned long)sl;
	sl->keepalive_timer.function = sl_keepalive;
	init_timer(&sl->outfill_timer);
	sl->outfill_timer.data = (unsigned long)sl;
	sl->outfill_timer.function = sl_outfill;
#endif
	slip_devs[i] = dev;
	return sl;
}