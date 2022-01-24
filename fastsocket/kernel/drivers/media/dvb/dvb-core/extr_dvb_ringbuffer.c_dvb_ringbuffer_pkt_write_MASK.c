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
struct dvb_ringbuffer {int pwrite; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_ringbuffer*,size_t) ; 
 size_t PKT_READY ; 
 int FUNC1 (struct dvb_ringbuffer*,int /*<<< orphan*/ *,size_t) ; 

ssize_t FUNC2(struct dvb_ringbuffer *rbuf, u8* buf, size_t len)
{
	int status;
	ssize_t oldpwrite = rbuf->pwrite;

	FUNC0(rbuf, len >> 8);
	FUNC0(rbuf, len & 0xff);
	FUNC0(rbuf, PKT_READY);
	status = FUNC1(rbuf, buf, len);

	if (status < 0) rbuf->pwrite = oldpwrite;
	return status;
}