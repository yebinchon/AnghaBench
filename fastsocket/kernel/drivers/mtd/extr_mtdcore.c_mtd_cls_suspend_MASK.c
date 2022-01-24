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
struct mtd_info {int (* suspend ) (struct mtd_info*) ;} ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct mtd_info* FUNC0 (struct device*) ; 
 int FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, pm_message_t state)
{
	struct mtd_info *mtd = FUNC0(dev);

	if (mtd && mtd->suspend)
		return mtd->suspend(mtd);
	else
		return 0;
}