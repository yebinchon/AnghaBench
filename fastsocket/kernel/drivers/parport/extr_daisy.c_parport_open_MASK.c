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
struct parport {int daisy; } ;
struct pardevice {int daisy; } ;
struct daisydev {int devnum; int daisy; int /*<<< orphan*/  port; struct daisydev* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pardevice*) ; 
 struct parport* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*) ; 
 struct pardevice* FUNC3 (struct parport*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct daisydev* topology ; 
 int /*<<< orphan*/  topology_lock ; 

struct pardevice *FUNC8(int devnum, const char *name)
{
	struct daisydev *p = topology;
	struct parport *port;
	struct pardevice *dev;
	int daisy;

	FUNC6(&topology_lock);
	while (p && p->devnum != devnum)
		p = p->next;

	if (!p) {
		FUNC7(&topology_lock);
		return NULL;
	}

	daisy = p->daisy;
	port = FUNC1(p->port);
	FUNC7(&topology_lock);

	dev = FUNC3(port, name, NULL, NULL, NULL, 0, NULL);
	FUNC2(port);
	if (!dev)
		return NULL;

	dev->daisy = daisy;

	/* Check that there really is a device to select. */
	if (daisy >= 0) {
		int selected;
		FUNC0(dev);
		selected = port->daisy;
		FUNC4(dev);

		if (selected != daisy) {
			/* No corresponding device. */
			FUNC5(dev);
			return NULL;
		}
	}

	return dev;
}