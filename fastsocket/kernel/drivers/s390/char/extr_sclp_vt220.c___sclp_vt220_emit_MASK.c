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
struct TYPE_4__ {void* callback_data; int /*<<< orphan*/  callback; int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;
struct sclp_vt220_request {TYPE_2__ sclp_req; } ;
struct TYPE_3__ {int sclp_receive_mask; } ;

/* Variables and functions */
 int EIO ; 
 int EVTYP_VT220MSG_MASK ; 
 int /*<<< orphan*/  SCLP_CMDW_WRITE_EVENT_DATA ; 
 int /*<<< orphan*/  SCLP_REQ_FAILED ; 
 int /*<<< orphan*/  SCLP_REQ_FILLED ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  sclp_vt220_callback ; 
 TYPE_1__ sclp_vt220_register ; 

__attribute__((used)) static int
FUNC1(struct sclp_vt220_request *request)
{
	if (!(sclp_vt220_register.sclp_receive_mask & EVTYP_VT220MSG_MASK)) {
		request->sclp_req.status = SCLP_REQ_FAILED;
		return -EIO;
	}
	request->sclp_req.command = SCLP_CMDW_WRITE_EVENT_DATA;
	request->sclp_req.status = SCLP_REQ_FILLED;
	request->sclp_req.callback = sclp_vt220_callback;
	request->sclp_req.callback_data = (void *) request;

	return FUNC0(&request->sclp_req);
}