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
struct origin {int /*<<< orphan*/  hash_list; int /*<<< orphan*/  bdev; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 struct list_head* _origins ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct origin *o)
{
	struct list_head *sl = &_origins[FUNC1(o->bdev)];
	FUNC0(&o->hash_list, sl);
}