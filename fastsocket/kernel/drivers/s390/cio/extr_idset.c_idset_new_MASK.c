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
struct idset {int num_ssid; int num_id; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct idset* FUNC2 (scalar_t__) ; 

__attribute__((used)) static struct idset *FUNC3(int num_ssid, int num_id)
{
	struct idset *set;

	set = FUNC2(sizeof(struct idset) + FUNC0(num_ssid, num_id));
	if (set) {
		set->num_ssid = num_ssid;
		set->num_id = num_id;
		FUNC1(set->bitmap, 0, FUNC0(num_ssid, num_id));
	}
	return set;
}