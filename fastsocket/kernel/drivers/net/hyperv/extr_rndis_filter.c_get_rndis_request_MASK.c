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
typedef  void* u32 ;
struct rndis_set_request {int /*<<< orphan*/  req_id; } ;
struct TYPE_2__ {struct rndis_set_request set_req; } ;
struct rndis_message {TYPE_1__ msg; void* msg_len; void* ndis_msg_type; } ;
struct rndis_request {int /*<<< orphan*/  list_ent; struct rndis_message request_msg; int /*<<< orphan*/  wait_event; } ;
struct rndis_device {int /*<<< orphan*/  request_lock; int /*<<< orphan*/  req_list; int /*<<< orphan*/  new_req_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rndis_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct rndis_request *FUNC6(struct rndis_device *dev,
					     u32 msg_type,
					     u32 msg_len)
{
	struct rndis_request *request;
	struct rndis_message *rndis_msg;
	struct rndis_set_request *set;
	unsigned long flags;

	request = FUNC2(sizeof(struct rndis_request), GFP_KERNEL);
	if (!request)
		return NULL;

	FUNC1(&request->wait_event);

	rndis_msg = &request->request_msg;
	rndis_msg->ndis_msg_type = msg_type;
	rndis_msg->msg_len = msg_len;

	/*
	 * Set the request id. This field is always after the rndis header for
	 * request/response packet types so we just used the SetRequest as a
	 * template
	 */
	set = &rndis_msg->msg.set_req;
	set->req_id = FUNC0(&dev->new_req_id);

	/* Add to the request list */
	FUNC4(&dev->request_lock, flags);
	FUNC3(&request->list_ent, &dev->req_list);
	FUNC5(&dev->request_lock, flags);

	return request;
}