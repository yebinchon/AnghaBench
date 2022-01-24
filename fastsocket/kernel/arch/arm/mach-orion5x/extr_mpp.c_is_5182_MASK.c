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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ MV88F5182_DEV_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(void)
{
	u32 dev;
	u32 rev;

	FUNC0(&dev, &rev);

	return !!(dev == MV88F5182_DEV_ID);
}