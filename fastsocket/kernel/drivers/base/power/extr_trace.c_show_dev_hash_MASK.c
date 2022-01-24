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
struct list_head {struct list_head* prev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVHASH ; 
 int /*<<< orphan*/  DEVSEED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct list_head dpm_list ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct list_head*) ; 

__attribute__((used)) static int FUNC4(unsigned int value)
{
	int match = 0;
	struct list_head *entry = dpm_list.prev;

	while (entry != &dpm_list) {
		struct device * dev = FUNC3(entry);
		unsigned int hash = FUNC2(DEVSEED, FUNC1(dev), DEVHASH);
		if (hash == value) {
			FUNC0(dev, "hash matches\n");
			match++;
		}
		entry = entry->prev;
	}
	return match;
}