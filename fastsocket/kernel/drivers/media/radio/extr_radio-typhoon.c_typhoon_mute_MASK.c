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
struct typhoon {int muted; int /*<<< orphan*/  mutefreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct typhoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct typhoon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct typhoon *dev)
{
	if (dev->muted == 1)
		return;
	FUNC1(dev, 0);
	FUNC0(dev, dev->mutefreq);
	dev->muted = 1;
}