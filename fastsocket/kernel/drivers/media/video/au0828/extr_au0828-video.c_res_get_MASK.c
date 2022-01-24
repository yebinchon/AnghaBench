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
struct au0828_fh {unsigned int resources; struct au0828_dev* dev; } ;
struct au0828_dev {unsigned int resources; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct au0828_fh *fh, unsigned int bit)
{
	struct au0828_dev    *dev = fh->dev;

	if (fh->resources & bit)
		/* have it already allocated */
		return 1;

	/* is it free? */
	FUNC1(&dev->lock);
	if (dev->resources & bit) {
		/* no, someone else uses it */
		FUNC2(&dev->lock);
		return 0;
	}
	/* it's free, grab it */
	fh->resources  |= bit;
	dev->resources |= bit;
	FUNC0(1, "res: get %d\n", bit);
	FUNC2(&dev->lock);
	return 1;
}