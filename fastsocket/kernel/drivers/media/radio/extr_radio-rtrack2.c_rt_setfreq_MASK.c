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
struct rtrack2 {unsigned long curfreq; int /*<<< orphan*/  lock; int /*<<< orphan*/  io; int /*<<< orphan*/  muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtrack2*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtrack2*) ; 

__attribute__((used)) static int FUNC5(struct rtrack2 *dev, unsigned long freq)
{
	int i;

	FUNC0(&dev->lock);
	dev->curfreq = freq;
	freq = freq / 200 + 856;

	FUNC3(0xc8, dev->io);
	FUNC3(0xc9, dev->io);
	FUNC3(0xc9, dev->io);

	for (i = 0; i < 10; i++)
		FUNC4(dev);

	for (i = 14; i >= 0; i--)
		if (freq & (1 << i))
			FUNC2(dev);
		else
			FUNC4(dev);

	FUNC3(0xc8, dev->io);
	if (!dev->muted)
		FUNC3(0, dev->io);

	FUNC1(&dev->lock);
	return 0;
}