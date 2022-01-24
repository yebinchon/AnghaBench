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
struct msi_desc {int /*<<< orphan*/  dev; } ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct msi_desc* FUNC1 (struct kobject*) ; 

void FUNC2(struct kobject *kobj)
{
	struct msi_desc *entry = FUNC1(kobj);

	FUNC0(entry->dev);
}