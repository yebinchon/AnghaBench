#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int devicename; TYPE_1__* channel; } ;
struct TYPE_5__ {int msg_len; scalar_t__ buff_offset; } ;
struct TYPE_4__ {int next_sendbuf; int num_sendbufs; int /*<<< orphan*/  free_sendbufs; scalar_t__ first_sendbuf; } ;
typedef  TYPE_2__ LLData ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  CEPID ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  ISDN_STAT_BSENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ceReqClass1 ; 
 int /*<<< orphan*/  ceReqLnkWrite ; 
 int /*<<< orphan*/  ceReqTypeLnk ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 TYPE_3__** sc_adapter ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int*) ; 

int FUNC7(int devId, int channel, int ack, struct sk_buff *data)
{
	LLData	ReqLnkWrite;
	int status;
	int card;
	unsigned long len;

	card = FUNC2(devId);

	if(!FUNC0(card)) {
		FUNC5("invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	FUNC5("%s: sndpkt: frst = 0x%lx nxt = %d  f = %d n = %d\n",
		sc_adapter[card]->devicename,
		sc_adapter[card]->channel[channel].first_sendbuf,
		sc_adapter[card]->channel[channel].next_sendbuf,
		sc_adapter[card]->channel[channel].free_sendbufs,
		sc_adapter[card]->channel[channel].num_sendbufs);

	if(!sc_adapter[card]->channel[channel].free_sendbufs) {
		FUNC5("%s: out of TX buffers\n",
				sc_adapter[card]->devicename);
		return -EINVAL;
	}

	if(data->len > BUFFER_SIZE) {
		FUNC5("%s: data overflows buffer size (data > buffer)\n",
			sc_adapter[card]->devicename);
		return -EINVAL;
	}

	ReqLnkWrite.buff_offset = sc_adapter[card]->channel[channel].next_sendbuf *
		BUFFER_SIZE + sc_adapter[card]->channel[channel].first_sendbuf;
	ReqLnkWrite.msg_len = data->len; /* sk_buff size */
	FUNC5("%s: writing %d bytes to buffer offset 0x%lx\n",
			sc_adapter[card]->devicename,
			ReqLnkWrite.msg_len, ReqLnkWrite.buff_offset);
	FUNC4(card, (char *)ReqLnkWrite.buff_offset, data->data, ReqLnkWrite.msg_len);

	/*
	 * sendmessage
	 */
	FUNC5("%s: sndpkt size=%d, buf_offset=0x%lx buf_indx=%d\n",
		sc_adapter[card]->devicename,
		ReqLnkWrite.msg_len, ReqLnkWrite.buff_offset,
		sc_adapter[card]->channel[channel].next_sendbuf);

	status = FUNC6(card, CEPID, ceReqTypeLnk, ceReqClass1, ceReqLnkWrite,
				channel+1, sizeof(LLData), (unsigned int*)&ReqLnkWrite);
	len = data->len;
	if(status) {
		FUNC5("%s: failed to send packet, status = %d\n",
				sc_adapter[card]->devicename, status);
		return -1;
	}
	else {
		sc_adapter[card]->channel[channel].free_sendbufs--;
		sc_adapter[card]->channel[channel].next_sendbuf =
			++sc_adapter[card]->channel[channel].next_sendbuf ==
			sc_adapter[card]->channel[channel].num_sendbufs ? 0 :
			sc_adapter[card]->channel[channel].next_sendbuf;
			FUNC5("%s: packet sent successfully\n", sc_adapter[card]->devicename);
		FUNC1(data);
		FUNC3(card,ISDN_STAT_BSENT,channel, (char *)&len);
	}
	return len;
}