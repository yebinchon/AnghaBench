#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mirror {TYPE_1__* ms; scalar_t__ offset; } ;
struct bio {int /*<<< orphan*/  bi_sector; int /*<<< orphan*/  bi_size; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  ti; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static sector_t FUNC2(struct mirror *m, struct bio *bio)
{
	if (FUNC1(!bio->bi_size))
		return 0;
	return m->offset + FUNC0(m->ms->ti, bio->bi_sector);
}