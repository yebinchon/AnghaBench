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
struct mii_if_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct mii_if_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 (struct mii_if_info *mii)
{
	int cur_link = FUNC0(mii);
	int prev_link = FUNC2(mii->dev);

	if (cur_link && !prev_link)
		FUNC3(mii->dev);
	else if (prev_link && !cur_link)
		FUNC1(mii->dev);
}