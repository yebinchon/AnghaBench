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
struct ssb_sprom {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  revision; } ;
struct bcma_bus {TYPE_1__ sprom; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_bus*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*,char*,int) ; 
 int FUNC2 (struct bcma_bus*,struct ssb_sprom*) ; 

__attribute__((used)) static int FUNC3(struct bcma_bus *bus,
					 struct ssb_sprom *out)
{
	int err;

	if (!&get_fallback_sprom) {
		err = -ENOENT;
		goto fail;
	}

	err = FUNC2(bus, out);
	if (err)
		goto fail;

	FUNC0(bus, "Using SPROM revision %d provided by platform.\n",
		   bus->sprom.revision);
	return 0;
fail:
	FUNC1(bus, "Using fallback SPROM failed (err %d)\n", err);
	return err;
}