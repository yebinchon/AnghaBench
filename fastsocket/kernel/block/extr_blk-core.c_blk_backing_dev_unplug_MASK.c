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
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct backing_dev_info {struct request_queue* unplug_io_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 

__attribute__((used)) static void FUNC1(struct backing_dev_info *bdi,
				   struct page *page)
{
	struct request_queue *q = bdi->unplug_io_data;

	FUNC0(q);
}