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
struct request_queue {int /*<<< orphan*/  nr_batching; } ;
struct io_context {int /*<<< orphan*/  last_waited; int /*<<< orphan*/  nr_batch_requests; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request_queue*,struct io_context*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static void FUNC1(struct request_queue *q, struct io_context *ioc)
{
	if (!ioc || FUNC0(q, ioc))
		return;

	ioc->nr_batch_requests = q->nr_batching;
	ioc->last_waited = jiffies;
}