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
struct v4l2_frequency {scalar_t__ frequency; } ;
struct maestro {int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FREQ_HI ; 
 scalar_t__ FREQ_LO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct maestro*,int /*<<< orphan*/ ) ; 
 struct maestro* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
					struct v4l2_frequency *f)
{
	struct maestro *dev = FUNC4(file);

	if (f->frequency < FREQ_LO || f->frequency > FREQ_HI)
		return -EINVAL;
	FUNC1(&dev->lock);
	FUNC3(dev, FUNC0(f->frequency));
	FUNC2(&dev->lock);
	return 0;
}