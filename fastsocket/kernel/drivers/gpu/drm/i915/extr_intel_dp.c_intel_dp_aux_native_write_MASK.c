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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct intel_dp {int dummy; } ;

/* Variables and functions */
 int AUX_NATIVE_REPLY_ACK ; 
 int AUX_NATIVE_REPLY_DEFER ; 
 int AUX_NATIVE_REPLY_MASK ; 
 int AUX_NATIVE_WRITE ; 
 int EIO ; 
 int FUNC0 (struct intel_dp*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct intel_dp *intel_dp,
			  uint16_t address, uint8_t *send, int send_bytes)
{
	int ret;
	uint8_t	msg[20];
	int msg_bytes;
	uint8_t	ack;

	FUNC1(intel_dp);
	if (send_bytes > 16)
		return -1;
	msg[0] = AUX_NATIVE_WRITE << 4;
	msg[1] = address >> 8;
	msg[2] = address & 0xff;
	msg[3] = send_bytes - 1;
	FUNC2(&msg[4], send, send_bytes);
	msg_bytes = send_bytes + 4;
	for (;;) {
		ret = FUNC0(intel_dp, msg, msg_bytes, &ack, 1);
		if (ret < 0)
			return ret;
		if ((ack & AUX_NATIVE_REPLY_MASK) == AUX_NATIVE_REPLY_ACK)
			break;
		else if ((ack & AUX_NATIVE_REPLY_MASK) == AUX_NATIVE_REPLY_DEFER)
			FUNC3(100);
		else
			return -EIO;
	}
	return send_bytes;
}