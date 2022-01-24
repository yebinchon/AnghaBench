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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int transfer_buffer_length; int actual_length; int /*<<< orphan*/ * transfer_buffer; scalar_t__ status; struct pd_dvb_adapter* context; } ;
struct dvb_demux {int dummy; } ;
struct pd_dvb_adapter {int /*<<< orphan*/  is_streaming; struct dvb_demux demux; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct pd_dvb_adapter *pd_dvb = urb->context;
	int len = urb->transfer_buffer_length;
	struct dvb_demux *demux = &pd_dvb->demux;
	s32 ret;

	if (!pd_dvb->is_streaming || urb->status) {
		if (urb->status == -EPROTO)
			goto resend;
		return;
	}

	if (urb->actual_length == len)
		FUNC0(demux, urb->transfer_buffer, len);
	else if (urb->actual_length == len - 4) {
		int offset;
		u8 *buf = urb->transfer_buffer;

		/*
		 * The packet size is 512,
		 * last packet contains 456 bytes tsp data
		 */
		for (offset = 456; offset < len; offset += 512) {
			if (!FUNC2(buf + offset, "DVHS", 4)) {
				FUNC0(demux, buf, offset);
				if (len > offset + 52 + 4) {
					/*16 bytes trailer + 36 bytes padding */
					buf += offset + 52;
					len -= offset + 52 + 4;
					FUNC0(demux, buf, len);
				}
				break;
			}
		}
	}

resend:
	ret = FUNC3(urb, GFP_ATOMIC);
	if (ret)
		FUNC1(" usb_submit_urb failed: error %d", ret);
}