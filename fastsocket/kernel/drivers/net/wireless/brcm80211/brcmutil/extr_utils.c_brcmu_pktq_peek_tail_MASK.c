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
struct sk_buff {int dummy; } ;
struct pktq {scalar_t__ len; int hi_prec; TYPE_1__* q; } ;
struct TYPE_2__ {int /*<<< orphan*/  skblist; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct sk_buff *FUNC2(struct pktq *pq, int *prec_out)
{
	int prec;

	if (pq->len == 0)
		return NULL;

	for (prec = 0; prec < pq->hi_prec; prec++)
		if (!FUNC1(&pq->q[prec].skblist))
			break;

	if (prec_out)
		*prec_out = prec;

	return FUNC0(&pq->q[prec].skblist);
}