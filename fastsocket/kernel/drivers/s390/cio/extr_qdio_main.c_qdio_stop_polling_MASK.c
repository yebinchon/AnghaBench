#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ack_start; scalar_t__ ack_count; scalar_t__ polling; } ;
struct TYPE_3__ {TYPE_2__ in; } ;
struct qdio_q {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLSB_P_INPUT_NOT_INIT ; 
 scalar_t__ FUNC0 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stop_polling ; 

__attribute__((used)) static inline void FUNC4(struct qdio_q *q)
{
	if (!q->u.in.polling)
		return;

	q->u.in.polling = 0;
	FUNC1(q, stop_polling);

	/* show the card that we are not polling anymore */
	if (FUNC0(q)) {
		FUNC3(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT,
			       q->u.in.ack_count);
		q->u.in.ack_count = 0;
	} else
		FUNC2(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT);
}