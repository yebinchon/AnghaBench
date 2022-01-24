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
struct thin_c {int /*<<< orphan*/  sort_bio_list; int /*<<< orphan*/  deferred_bio_list; } ;
struct rb_node {int dummy; } ;
struct dm_thin_endio_hook {int /*<<< orphan*/  rb_node; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC4 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC5 (struct rb_node*) ; 
 struct bio* FUNC6 (struct dm_thin_endio_hook*) ; 
 struct dm_thin_endio_hook* FUNC7 (struct rb_node*) ; 

__attribute__((used)) static void FUNC8(struct thin_c *tc)
{
	struct rb_node *node;
	struct dm_thin_endio_hook *pbd;
	struct bio *bio;

	for (node = FUNC4(&tc->sort_bio_list); node; node = FUNC5(node)) {
		pbd = FUNC7(node);
		bio = FUNC6(pbd);

		FUNC2(&tc->deferred_bio_list, bio);
		FUNC3(&pbd->rb_node, &tc->sort_bio_list);
	}

	FUNC1(!FUNC0(&tc->sort_bio_list));
}