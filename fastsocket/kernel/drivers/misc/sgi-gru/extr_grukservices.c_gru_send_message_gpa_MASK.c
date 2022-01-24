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
struct message_header {int lines; int /*<<< orphan*/  present2; int /*<<< orphan*/  present; } ;
struct gru_message_queue_desc {int /*<<< orphan*/  mq_gpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CBS_IDLE ; 
 int FUNC1 (unsigned int,int) ; 
 int GRU_CACHE_LINE_BYTES ; 
 int /*<<< orphan*/  IMA ; 
 int MQE_BUG_NO_RESOURCES ; 
 int MQE_OK ; 
 int MQIE_AGAIN ; 
 int /*<<< orphan*/  MQS_FULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct message_header*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 scalar_t__ FUNC5 (unsigned int,void**,void**) ; 
 int /*<<< orphan*/  FUNC6 (struct message_header*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  mesq_send ; 
 int /*<<< orphan*/  mesq_send_failed ; 
 int /*<<< orphan*/  FUNC10 (struct message_header*,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*,struct gru_message_queue_desc*,void*,int) ; 

int FUNC12(struct gru_message_queue_desc *mqd, void *mesg,
				unsigned int bytes)
{
	struct message_header *mhdr;
	void *cb;
	void *dsr;
	int istatus, clines, ret;

	FUNC2(mesq_send);
	FUNC0(bytes < sizeof(int) || bytes > 2 * GRU_CACHE_LINE_BYTES);

	clines = FUNC1(bytes, GRU_CACHE_LINE_BYTES);
	if (FUNC5(bytes, &cb, &dsr))
		return MQE_BUG_NO_RESOURCES;
	FUNC9(dsr, mesg, bytes);
	mhdr = dsr;
	mhdr->present = MQS_FULL;
	mhdr->lines = clines;
	if (clines == 2) {
		mhdr->present2 = FUNC3(mhdr);
		FUNC10(mhdr, MQS_FULL);
	}

	do {
		ret = MQE_OK;
		FUNC7(cb, mqd->mq_gpa, FUNC6(mhdr), clines, IMA);
		istatus = FUNC8(cb);
		if (istatus != CBS_IDLE)
			ret = FUNC11(cb, mqd, dsr, clines);
	} while (ret == MQIE_AGAIN);
	FUNC4(cb, dsr);

	if (ret)
		FUNC2(mesq_send_failed);
	return ret;
}