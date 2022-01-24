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
typedef  int u8 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pktq {int hi_prec; int /*<<< orphan*/  len; TYPE_1__* q; } ;
struct TYPE_2__ {struct sk_buff_head skblist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pktq*) ; 
 scalar_t__ FUNC1 (struct pktq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 

struct sk_buff *FUNC3(struct pktq *pq, int prec,
					   struct sk_buff *p)
{
	struct sk_buff_head *q;

	if (FUNC0(pq) || FUNC1(pq, prec))
		return NULL;

	q = &pq->q[prec].skblist;
	FUNC2(q, p);
	pq->len++;

	if (pq->hi_prec < prec)
		pq->hi_prec = (u8) prec;

	return p;
}