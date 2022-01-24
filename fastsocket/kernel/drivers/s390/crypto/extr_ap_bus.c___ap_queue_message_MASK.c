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
struct ap_queue_status {int response_code; } ;
struct ap_message {int /*<<< orphan*/  list; int /*<<< orphan*/  (* receive ) (struct ap_device*,struct ap_message*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  special; int /*<<< orphan*/  length; int /*<<< orphan*/  message; int /*<<< orphan*/  psmid; } ;
struct ap_device {scalar_t__ queue_count; scalar_t__ queue_depth; int /*<<< orphan*/  total_request_count; int /*<<< orphan*/  requestq_count; int /*<<< orphan*/  requestq; int /*<<< orphan*/  pendingq_count; int /*<<< orphan*/  pendingq; int /*<<< orphan*/  qid; } ;

/* Variables and functions */
#define  AP_RESPONSE_MESSAGE_TOO_BIG 132 
#define  AP_RESPONSE_NORMAL 131 
#define  AP_RESPONSE_Q_FULL 130 
#define  AP_RESPONSE_REQ_FAC_NOT_INST 129 
#define  AP_RESPONSE_RESET_IN_PROGRESS 128 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ap_queue_status FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ap_device*) ; 
 int /*<<< orphan*/  ap_poll_requests ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ap_device*,struct ap_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ap_device*,struct ap_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ap_device *ap_dev, struct ap_message *ap_msg)
{
	struct ap_queue_status status;

	if (FUNC6(&ap_dev->requestq) &&
	    ap_dev->queue_count < ap_dev->queue_depth) {
		status = FUNC1(ap_dev->qid, ap_msg->psmid,
				   ap_msg->message, ap_msg->length,
				   ap_msg->special);
		switch (status.response_code) {
		case AP_RESPONSE_NORMAL:
			FUNC5(&ap_msg->list, &ap_dev->pendingq);
			FUNC4(&ap_poll_requests);
			ap_dev->pendingq_count++;
			FUNC2(ap_dev);
			ap_dev->total_request_count++;
			break;
		case AP_RESPONSE_Q_FULL:
		case AP_RESPONSE_RESET_IN_PROGRESS:
			FUNC5(&ap_msg->list, &ap_dev->requestq);
			ap_dev->requestq_count++;
			ap_dev->total_request_count++;
			return -EBUSY;
		case AP_RESPONSE_REQ_FAC_NOT_INST:
		case AP_RESPONSE_MESSAGE_TOO_BIG:
			ap_msg->receive(ap_dev, ap_msg, FUNC0(-EINVAL));
			return -EINVAL;
		default:	/* Device is gone. */
			ap_msg->receive(ap_dev, ap_msg, FUNC0(-ENODEV));
			return -ENODEV;
		}
	} else {
		FUNC5(&ap_msg->list, &ap_dev->requestq);
		ap_dev->requestq_count++;
		ap_dev->total_request_count++;
		return -EBUSY;
	}
	FUNC3();
	return 0;
}