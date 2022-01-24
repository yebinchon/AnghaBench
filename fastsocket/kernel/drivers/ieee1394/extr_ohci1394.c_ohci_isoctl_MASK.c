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
struct hpsb_iso_packet_info {int dummy; } ;
struct hpsb_iso {int dummy; } ;
typedef  enum isoctl_cmd { ____Placeholder_isoctl_cmd } isoctl_cmd ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  RECV_FLUSH 141 
#define  RECV_INIT 140 
#define  RECV_LISTEN_CHANNEL 139 
#define  RECV_RELEASE 138 
#define  RECV_SET_CHANNEL_MASK 137 
#define  RECV_SHUTDOWN 136 
#define  RECV_START 135 
#define  RECV_STOP 134 
#define  RECV_UNLISTEN_CHANNEL 133 
#define  XMIT_INIT 132 
#define  XMIT_QUEUE 131 
#define  XMIT_SHUTDOWN 130 
#define  XMIT_START 129 
#define  XMIT_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct hpsb_iso*,unsigned long,int) ; 
 int FUNC2 (struct hpsb_iso*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_iso*,struct hpsb_iso_packet_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_iso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_iso*) ; 
 int FUNC6 (struct hpsb_iso*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_iso*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int FUNC9 (struct hpsb_iso*) ; 
 int FUNC10 (struct hpsb_iso*,struct hpsb_iso_packet_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct hpsb_iso*) ; 
 int FUNC12 (struct hpsb_iso*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct hpsb_iso*) ; 

__attribute__((used)) static int FUNC14(struct hpsb_iso *iso, enum isoctl_cmd cmd, unsigned long arg)
{

	switch(cmd) {
	case XMIT_INIT:
		return FUNC9(iso);
	case XMIT_START:
		return FUNC12(iso, arg);
	case XMIT_STOP:
		FUNC13(iso);
		return 0;
	case XMIT_QUEUE:
		return FUNC10(iso, (struct hpsb_iso_packet_info*) arg);
	case XMIT_SHUTDOWN:
		FUNC11(iso);
		return 0;

	case RECV_INIT:
		return FUNC2(iso);
	case RECV_START: {
		int *args = (int*) arg;
		return FUNC6(iso, args[0], args[1], args[2]);
	}
	case RECV_STOP:
		FUNC7(iso);
		return 0;
	case RECV_RELEASE:
		FUNC3(iso, (struct hpsb_iso_packet_info*) arg);
		return 0;
	case RECV_FLUSH:
		FUNC8((unsigned long) iso);
		return 0;
	case RECV_SHUTDOWN:
		FUNC5(iso);
		return 0;
	case RECV_LISTEN_CHANNEL:
		FUNC1(iso, arg, 1);
		return 0;
	case RECV_UNLISTEN_CHANNEL:
		FUNC1(iso, arg, 0);
		return 0;
	case RECV_SET_CHANNEL_MASK:
		FUNC4(iso, *((u64*) arg));
		return 0;

	default:
		FUNC0(KERN_ERR, "ohci_isoctl cmd %d not implemented yet",
			cmd);
		break;
	}
	return -EINVAL;
}