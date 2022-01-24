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
struct slave {TYPE_1__* dev; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct bonding *FUNC1(struct slave *slave)
{
	if (!slave || !slave->dev->master) {
		return NULL;
	}

	return (struct bonding *)FUNC0(slave->dev->master);
}