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
struct ipath_user_sdma_queue {int /*<<< orphan*/  header_cache; int /*<<< orphan*/  pkt_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_user_sdma_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ipath_user_sdma_queue *pq)
{
	if (!pq)
		return;

	FUNC2(pq->pkt_slab);
	FUNC0(pq->header_cache);
	FUNC1(pq);
}