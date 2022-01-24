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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct au0828_fh *fh, unsigned int bits)
{
	struct au0828_dev    *dev = fh->dev;

	FUNC0((fh->resources & bits) != bits);

	FUNC2(&dev->lock);
	fh->resources  &= ~bits;
	dev->resources &= ~bits;
	FUNC1(1, "res: put %d\n", bits);
	FUNC3(&dev->lock);
}