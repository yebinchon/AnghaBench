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
struct bio_list {int dummy; } ;
struct thin_c {int /*<<< orphan*/  lock; struct bio_list retry_on_resume_list; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct thin_c *tc)
{
	struct bio *bio;
	unsigned long flags;
	struct bio_list bios;

	FUNC1(&bios);

	FUNC4(&tc->lock, flags);
	FUNC2(&bios, &tc->retry_on_resume_list);
	FUNC1(&tc->retry_on_resume_list);
	FUNC5(&tc->lock, flags);

	while ((bio = FUNC3(&bios)))
		FUNC0(bio);
}