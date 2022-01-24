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
struct dvb_ringbuffer {size_t* data; size_t size; } ;

/* Variables and functions */
 size_t FUNC0 (struct dvb_ringbuffer*,int) ; 
 scalar_t__ DVB_RINGBUFFER_PKTHDRSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ringbuffer*,scalar_t__) ; 
 size_t PKT_DISPOSED ; 
 scalar_t__ FUNC2 (struct dvb_ringbuffer*) ; 

void FUNC3(struct dvb_ringbuffer *rbuf, size_t idx)
{
	size_t pktlen;

	rbuf->data[(idx + 2) % rbuf->size] = PKT_DISPOSED;

	// clean up disposed packets
	while(FUNC2(rbuf) > DVB_RINGBUFFER_PKTHDRSIZE) {
		if (FUNC0(rbuf, 2) == PKT_DISPOSED) {
			pktlen = FUNC0(rbuf, 0) << 8;
			pktlen |= FUNC0(rbuf, 1);
			FUNC1(rbuf, pktlen + DVB_RINGBUFFER_PKTHDRSIZE);
		} else {
			// first packet is not disposed, so we stop cleaning now
			break;
		}
	}
}