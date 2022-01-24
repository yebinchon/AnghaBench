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
struct TYPE_2__ {scalar_t__ hw_type; } ;
struct parisc_device {TYPE_1__ id; } ;
struct gsc_fixup_struct {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  (* choose_irq ) (struct parisc_device*,int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HPHW_FAULTY ; 
 int /*<<< orphan*/  FUNC0 (struct parisc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct parisc_device*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (struct parisc_device*,int /*<<< orphan*/ ) ; 
 struct parisc_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct parisc_device *padev = FUNC2(dev);
	struct gsc_fixup_struct *gf = data;

	/* work-around for 715/64 and others which have parent
	   at path [5] and children at path [5/0/x] */
	if (padev->id.hw_type == HPHW_FAULTY)
		FUNC0(padev, gf->ctrl, gf->choose_irq);
	gf->choose_irq(padev, gf->ctrl);

	return 0;
}