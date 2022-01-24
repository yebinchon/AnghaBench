#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int shmem_magic; size_t shmem_pgport; int /*<<< orphan*/  devicename; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ioport; scalar_t__ rambase; int /*<<< orphan*/  seq_no; scalar_t__ EngineUp; } ;
struct TYPE_7__ {size_t req_head; int /*<<< orphan*/ * req_queue; } ;
struct TYPE_6__ {int msg_byte_cnt; unsigned int type; unsigned int class; unsigned int code; unsigned int phy_link_no; unsigned int process_id; int sequence_no; int /*<<< orphan*/  time_stamp; int /*<<< orphan*/  msg_data; } ;
typedef  TYPE_1__ ReqMessage ;
typedef  TYPE_2__ DualPortMemory ;

/* Variables and functions */
 unsigned int CEPID ; 
 unsigned int CMPID ; 
 int EINVAL ; 
 int ESRCH ; 
 size_t FIFO_STATUS ; 
 size_t FIFO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_MESSAGES ; 
 unsigned int MSG_DATA_LEN ; 
 int /*<<< orphan*/  MSG_LEN ; 
 int WF_NOT_FULL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 TYPE_3__** sc_adapter ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(int card,
		unsigned int procid,
		unsigned int type, 
		unsigned int class, 
		unsigned int code,
		unsigned int link, 
		unsigned int data_len, 
		unsigned int *data) 
{
	DualPortMemory *dpm;
	ReqMessage sndmsg;
	unsigned long flags;

	if (!FUNC0(card)) {
		FUNC6("Invalid param: %d is not a valid card id\n", card);
		return -EINVAL;
	}

	/*
	 * Make sure we only send CEPID messages when the engine is up
	 * and CMPID messages when it is down
	 */
	if(sc_adapter[card]->EngineUp && procid == CMPID) {
		FUNC6("%s: Attempt to send CM message with engine up\n",
			sc_adapter[card]->devicename);
		return -ESRCH;
	}

	if(!sc_adapter[card]->EngineUp && procid == CEPID) {
		FUNC6("%s: Attempt to send CE message with engine down\n",
			sc_adapter[card]->devicename);
		return -ESRCH;
	}

	FUNC4(&sndmsg, 0, MSG_LEN);
	sndmsg.msg_byte_cnt = 4;
	sndmsg.type = type;
	sndmsg.class = class;
	sndmsg.code = code;
	sndmsg.phy_link_no = link;

	if (data_len > 0) {
		if (data_len > MSG_DATA_LEN)
			data_len = MSG_DATA_LEN;
		FUNC2(&(sndmsg.msg_data), data, data_len);
		sndmsg.msg_byte_cnt = data_len + 8;
	}

	sndmsg.process_id = procid;
	sndmsg.sequence_no = sc_adapter[card]->seq_no++ % 256;

	/*
	 * wait for an empty slot in the queue
	 */
	while (!(FUNC1(sc_adapter[card]->ioport[FIFO_STATUS]) & WF_NOT_FULL))
		FUNC9(1);

	/*
	 * Disable interrupts and map in shared memory
	 */
	FUNC7(&sc_adapter[card]->lock, flags);
	FUNC5((sc_adapter[card]->shmem_magic >> 14) | 0x80,
		sc_adapter[card]->ioport[sc_adapter[card]->shmem_pgport]);
	dpm = (DualPortMemory *) sc_adapter[card]->rambase;	/* Fix me */
	FUNC3(&(dpm->req_queue[dpm->req_head]),&sndmsg,MSG_LEN);
	dpm->req_head = (dpm->req_head+1) % MAX_MESSAGES;
	FUNC5(sndmsg.sequence_no, sc_adapter[card]->ioport[FIFO_WRITE]);
	FUNC8(&sc_adapter[card]->lock, flags);
		
	FUNC6("%s: Sent Message seq:%d pid:%d time:%d "
			"cnt:%d (type,class,code):(%d,%d,%d) "
			"link:%d\n ",
				sc_adapter[card]->devicename,
				sndmsg.sequence_no,
				sndmsg.process_id,
				sndmsg.time_stamp,
				sndmsg.msg_byte_cnt,
				sndmsg.type,
				sndmsg.class,
				sndmsg.code,
				sndmsg.phy_link_no); 
		
	return 0;
}