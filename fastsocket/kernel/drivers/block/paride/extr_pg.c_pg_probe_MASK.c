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
struct pg {int drive; } ;

/* Variables and functions */
 int FUNC0 (struct pg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pg*) ; 

__attribute__((used)) static int FUNC2(struct pg *dev)
{
	if (dev->drive == -1) {
		for (dev->drive = 0; dev->drive <= 1; dev->drive++)
			if (!FUNC1(dev))
				return FUNC0(dev, 1);
	} else {
		if (!FUNC1(dev))
			return FUNC0(dev, 1);
	}
	return -1;
}