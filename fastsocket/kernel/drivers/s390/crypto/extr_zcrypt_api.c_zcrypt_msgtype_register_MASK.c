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
struct zcrypt_ops {int /*<<< orphan*/  list; scalar_t__ owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_ops_list ; 
 int /*<<< orphan*/  zcrypt_ops_list_lock ; 

void FUNC3(struct zcrypt_ops *zops)
{
	if (zops->owner) {
		FUNC1(&zcrypt_ops_list_lock);
		FUNC0(&zops->list, &zcrypt_ops_list);
		FUNC2(&zcrypt_ops_list_lock);
	}
}