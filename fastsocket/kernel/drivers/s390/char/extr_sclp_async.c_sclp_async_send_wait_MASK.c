#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int response_code; } ;
struct sclp_async_sccb {TYPE_2__ header; } ;
struct TYPE_9__ {int length; int flags; int /*<<< orphan*/  type; } ;
struct async_evbuf {int rtype; int otype; TYPE_3__ header; int /*<<< orphan*/  comp_id; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/  function_code; } ;
struct TYPE_11__ {TYPE_1__ header; struct async_evbuf evbuf; } ;
struct TYPE_10__ {scalar_t__ status; TYPE_5__* sccb; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EVTYP_ASYNC ; 
 int /*<<< orphan*/  SCLP_CMDW_WRITE_EVENT_DATA ; 
 int /*<<< orphan*/  SCLP_NORMAL_WRITE ; 
 scalar_t__ SCLP_REQ_DONE ; 
 scalar_t__ SCLP_REQ_FAILED ; 
 scalar_t__ SCLP_REQ_FILLED ; 
 int /*<<< orphan*/  callhome_enabled ; 
 TYPE_4__* request ; 
 TYPE_5__* sccb ; 
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  sclp_async_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(char *message)
{
	struct async_evbuf *evb;
	int rc;
	unsigned long flags;

	if (!callhome_enabled)
		return 0;
	sccb->evbuf.header.type = EVTYP_ASYNC;
	sccb->evbuf.rtype = 0xA5;
	sccb->evbuf.otype = 0x00;
	evb = &sccb->evbuf;
	request->command = SCLP_CMDW_WRITE_EVENT_DATA;
	request->sccb = sccb;
	request->status = SCLP_REQ_FILLED;
	FUNC4(sccb->evbuf.data, message, sizeof(sccb->evbuf.data));
	FUNC4(sccb->evbuf.comp_id, "5639H7CH0", sizeof(sccb->evbuf.comp_id));
	sccb->evbuf.header.length = sizeof(sccb->evbuf);
	sccb->header.length = sizeof(sccb->evbuf) + sizeof(sccb->header);
	sccb->header.function_code = SCLP_NORMAL_WRITE;
	rc = FUNC0(request);
	if (rc)
		return rc;
	FUNC2(&sclp_async_lock, flags);
	while (request->status != SCLP_REQ_DONE &&
		request->status != SCLP_REQ_FAILED) {
		 FUNC1();
	}
	FUNC3(&sclp_async_lock, flags);
	if (request->status != SCLP_REQ_DONE)
		return -EIO;
	rc = ((struct sclp_async_sccb *)
	       request->sccb)->header.response_code;
	if (rc != 0x0020)
		return -EIO;
	if (evb->header.flags != 0x80)
		return -EIO;
	return rc;
}