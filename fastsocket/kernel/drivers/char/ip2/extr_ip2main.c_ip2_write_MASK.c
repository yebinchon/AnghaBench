#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2ChanStrPtr ;
struct TYPE_7__ {TYPE_1__* driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  Pbuf_spinlock; } ;
typedef  TYPE_2__* PTTY ;

/* Variables and functions */
 int /*<<< orphan*/  CHANN ; 
 int /*<<< orphan*/  ITRC_ENTER ; 
 int /*<<< orphan*/  ITRC_RETURN ; 
 int /*<<< orphan*/  ITRC_WRITE ; 
 int FUNC0 (TYPE_1__*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5( PTTY tty, const unsigned char *pData, int count)
{
	i2ChanStrPtr  pCh = tty->driver_data;
	int bytesSent = 0;
	unsigned long flags;

	FUNC2 (CHANN, ITRC_WRITE, ITRC_ENTER, 2, count, -1 );

	/* Flush out any buffered data left over from ip2_putchar() calls. */
	FUNC1( tty );

	/* This is the actual move bit. Make sure it does what we need!!!!! */
	FUNC3(&pCh->Pbuf_spinlock, flags);
	bytesSent = FUNC0( pCh, pData, count);
	FUNC4(&pCh->Pbuf_spinlock, flags);

	FUNC2 (CHANN, ITRC_WRITE, ITRC_RETURN, 1, bytesSent );

	return bytesSent > 0 ? bytesSent : 0;
}