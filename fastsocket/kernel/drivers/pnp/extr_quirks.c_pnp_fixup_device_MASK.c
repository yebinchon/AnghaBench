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
struct pnp_fixup {int /*<<< orphan*/  (* quirk_function ) (struct pnp_dev*) ;scalar_t__* id; } ;
struct pnp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/  (*) (struct pnp_dev*)) ; 
 struct pnp_fixup* pnp_fixups ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 

void FUNC3(struct pnp_dev *dev)
{
	struct pnp_fixup *f;

	for (f = pnp_fixups; *f->id; f++) {
		if (!FUNC0(dev->id, f->id))
			continue;
		FUNC1(&dev->dev, "%s: calling %pF\n", f->id,
			f->quirk_function);
		f->quirk_function(dev);
	}
}