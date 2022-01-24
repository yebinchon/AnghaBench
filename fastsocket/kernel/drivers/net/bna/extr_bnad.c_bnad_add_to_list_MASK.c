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
struct bnad {scalar_t__ id; int /*<<< orphan*/  list_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  bna_id ; 
 int /*<<< orphan*/  bnad_list ; 
 int /*<<< orphan*/  bnad_list_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bnad *bnad)
{
	FUNC1(&bnad_list_mutex);
	FUNC0(&bnad->list_entry, &bnad_list);
	bnad->id = bna_id++;
	FUNC2(&bnad_list_mutex);
}