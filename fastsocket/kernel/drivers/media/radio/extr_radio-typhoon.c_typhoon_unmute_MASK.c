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
struct typhoon {scalar_t__ muted; int /*<<< orphan*/  curvol; int /*<<< orphan*/  curfreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct typhoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct typhoon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct typhoon *dev)
{
	if (dev->muted == 0)
		return;
	FUNC0(dev, dev->curfreq);
	FUNC1(dev, dev->curvol);
	dev->muted = 0;
}