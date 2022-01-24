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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ length; int /*<<< orphan*/  error; int /*<<< orphan*/  generation; scalar_t__ sendb; } ;
struct pending_request {TYPE_1__ req; int /*<<< orphan*/  list; struct hpsb_packet* packet; } ;
struct hpsb_packet {int /*<<< orphan*/  generation; } ;
struct file_info {int /*<<< orphan*/  reqlists_lock; int /*<<< orphan*/  req_pending; int /*<<< orphan*/  host; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RAW1394_ERROR_SEND_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hpsb_packet* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_packet*,void (*) (void*),struct pending_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ queue_complete_cb ; 
 int /*<<< orphan*/  FUNC6 (struct pending_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct file_info *fi, struct pending_request *req)
{
	struct hpsb_packet *packet = NULL;
	int retval = 0;
	quadlet_t data;
	unsigned long flags;

	data = FUNC1((u32) req->req.sendb);
	FUNC0("write_phypacket called - quadlet 0x%8.8x ", data);
	packet = FUNC2(fi->host, data);
	if (!packet)
		return -ENOMEM;
	req->req.length = 0;
	req->packet = packet;
	FUNC4(packet,
				      (void (*)(void *))queue_complete_cb, req);
	FUNC7(&fi->reqlists_lock, flags);
	FUNC5(&req->list, &fi->req_pending);
	FUNC8(&fi->reqlists_lock, flags);
	packet->generation = req->req.generation;
	retval = FUNC3(packet);
	FUNC0("write_phypacket send_packet called => retval: %d ", retval);
	if (retval < 0) {
		req->req.error = RAW1394_ERROR_SEND_ERROR;
		req->req.length = 0;
		FUNC6(req);
	}
	return 0;
}