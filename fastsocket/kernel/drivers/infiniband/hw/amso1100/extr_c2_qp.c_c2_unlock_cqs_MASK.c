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
struct c2_cq {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct c2_cq *send_cq, struct c2_cq *recv_cq)
{
	if (send_cq == recv_cq)
		FUNC1(&send_cq->lock);
	else if (send_cq > recv_cq) {
		FUNC0(&recv_cq->lock);
		FUNC1(&send_cq->lock);
	} else {
		FUNC0(&send_cq->lock);
		FUNC1(&recv_cq->lock);
	}
}