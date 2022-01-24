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
struct pool {int /*<<< orphan*/  all_io_ds; } ;
struct dm_thin_endio_hook {int /*<<< orphan*/  all_io_entry; } ;
struct bio {int bi_rw; } ;
struct TYPE_2__ {struct dm_thin_endio_hook* ptr; } ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct bio*) ; 

__attribute__((used)) static void FUNC2(struct pool *pool, struct bio *bio)
{
	struct dm_thin_endio_hook *h;

	if (bio->bi_rw & BIO_DISCARD)
		return;

	h = FUNC1(bio)->ptr;
	h->all_io_entry = FUNC0(pool->all_io_ds);
}