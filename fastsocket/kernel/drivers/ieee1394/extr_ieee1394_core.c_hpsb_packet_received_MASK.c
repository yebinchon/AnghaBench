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
struct hpsb_host {int /*<<< orphan*/  in_bus_reset; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  TCODE_CYCLE_START 137 
#define  TCODE_LOCK_REQUEST 136 
#define  TCODE_LOCK_RESPONSE 135 
#define  TCODE_READB 134 
#define  TCODE_READB_RESPONSE 133 
#define  TCODE_READQ 132 
#define  TCODE_READQ_RESPONSE 131 
#define  TCODE_WRITEB 130 
#define  TCODE_WRITEQ 129 
#define  TCODE_WRITE_RESPONSE 128 
 int /*<<< orphan*/  FUNC1 (char*,int*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_host*,int,int*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_host*,int,int*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct hpsb_host *host, quadlet_t *data, size_t size,
			  int write_acked)
{
	int tcode;

	if (FUNC4(host->in_bus_reset)) {
		FUNC0("received packet during reset; ignoring");
		return;
	}

	FUNC1("received packet", data, size, -1);

	tcode = (data[0] >> 4) & 0xf;

	switch (tcode) {
	case TCODE_WRITE_RESPONSE:
	case TCODE_READQ_RESPONSE:
	case TCODE_READB_RESPONSE:
	case TCODE_LOCK_RESPONSE:
		FUNC3(host, tcode, data, size);
		break;

	case TCODE_WRITEQ:
	case TCODE_WRITEB:
	case TCODE_READQ:
	case TCODE_READB:
	case TCODE_LOCK_REQUEST:
		FUNC2(host, tcode, data, size, write_acked);
		break;

	case TCODE_CYCLE_START:
		/* simply ignore this packet if it is passed on */
		break;

	default:
		FUNC0("received packet with bogus transaction code %d",
			   tcode);
		break;
	}
}