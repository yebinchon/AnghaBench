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
struct bio {struct bio* bi_io_vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 

__attribute__((used)) static void FUNC1(struct bio *bio)
{
	FUNC0(bio->bi_io_vec);
	FUNC0(bio);
}