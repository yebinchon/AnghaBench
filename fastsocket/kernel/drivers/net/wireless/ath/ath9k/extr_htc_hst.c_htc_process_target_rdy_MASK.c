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
struct htc_target {int /*<<< orphan*/  target_wait; int /*<<< orphan*/  tgt_ready; struct htc_endpoint* endpoint; int /*<<< orphan*/  credit_size; } ;
struct htc_ready_msg {int /*<<< orphan*/  credit_size; } ;
struct htc_endpoint {int /*<<< orphan*/  max_msglen; int /*<<< orphan*/  service_id; } ;

/* Variables and functions */
 size_t ENDPOINT0 ; 
 int /*<<< orphan*/  HTC_CTRL_RSVD_SVC ; 
 int /*<<< orphan*/  HTC_MAX_CONTROL_MESSAGE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct htc_target *target,
				   void *buf)
{
	struct htc_endpoint *endpoint;
	struct htc_ready_msg *htc_ready_msg = (struct htc_ready_msg *) buf;

	target->credit_size = FUNC1(htc_ready_msg->credit_size);

	endpoint = &target->endpoint[ENDPOINT0];
	endpoint->service_id = HTC_CTRL_RSVD_SVC;
	endpoint->max_msglen = HTC_MAX_CONTROL_MESSAGE_LENGTH;
	FUNC0(&target->tgt_ready);
	FUNC2(&target->target_wait);
}