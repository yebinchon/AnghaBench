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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct vmpacket_descriptor {int len8; int offset8; int /*<<< orphan*/  trans_id; } ;
struct vmbus_channel {int /*<<< orphan*/  inbound; } ;

/* Variables and functions */
 int ETOOSMALL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct vmpacket_descriptor*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel*) ; 

int FUNC4(struct vmbus_channel *channel, void *buffer,
			u32 bufferlen, u32 *buffer_actual_len, u64 *requestid)
{
	struct vmpacket_descriptor desc;
	u32 packetlen;
	u32 userlen;
	int ret;
	bool signal = false;

	*buffer_actual_len = 0;
	*requestid = 0;


	ret = FUNC0(&channel->inbound, &desc,
			     sizeof(struct vmpacket_descriptor));
	if (ret != 0)
		return 0;

	packetlen = desc.len8 << 3;
	userlen = packetlen - (desc.offset8 << 3);

	*buffer_actual_len = userlen;

	if (userlen > bufferlen) {

		FUNC2("Buffer too small - got %d needs %d\n",
			   bufferlen, userlen);
		return -ETOOSMALL;
	}

	*requestid = desc.trans_id;

	/* Copy over the packet to the user buffer */
	ret = FUNC1(&channel->inbound, buffer, userlen,
			     (desc.offset8 << 3), &signal);

	if (signal)
		FUNC3(channel);

	return 0;
}