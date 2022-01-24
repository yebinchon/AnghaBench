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
struct thin_c {int /*<<< orphan*/  lock; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_ENDIO_REQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct thin_c *tc, struct bio_list *master)
{
	struct bio *bio;
	struct bio_list bios;
	unsigned long flags;

	FUNC1(&bios);

	FUNC4(&tc->lock, flags);
	FUNC2(&bios, master);
	FUNC1(master);
	FUNC5(&tc->lock, flags);

	while ((bio = FUNC3(&bios)))
		FUNC0(bio, DM_ENDIO_REQUEUE);
}