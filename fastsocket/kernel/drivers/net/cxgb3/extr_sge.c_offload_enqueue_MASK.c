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
struct sk_buff {int dummy; } ;
struct sge_rspq {int /*<<< orphan*/  rx_queue; } ;
struct sge_qset {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sge_qset* FUNC2 (struct sge_rspq*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct sge_rspq *q, struct sk_buff *skb)
{
	int was_empty = FUNC3(&q->rx_queue);

	FUNC0(&q->rx_queue, skb);

	if (was_empty) {
		struct sge_qset *qs = FUNC2(q);

		FUNC1(&qs->napi);
	}
}