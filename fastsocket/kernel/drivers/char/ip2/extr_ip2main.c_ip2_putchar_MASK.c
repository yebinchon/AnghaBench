#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2ChanStrPtr ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
struct TYPE_5__ {unsigned char* Pbuf; int Pbuf_stuff; int /*<<< orphan*/  Pbuf_spinlock; } ;
typedef  TYPE_2__* PTTY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC3( PTTY tty, unsigned char ch )
{
	i2ChanStrPtr  pCh = tty->driver_data;
	unsigned long flags;

//	ip2trace (CHANN, ITRC_PUTC, ITRC_ENTER, 1, ch );

	FUNC1(&pCh->Pbuf_spinlock, flags);
	pCh->Pbuf[pCh->Pbuf_stuff++] = ch;
	if ( pCh->Pbuf_stuff == sizeof pCh->Pbuf ) {
		FUNC2(&pCh->Pbuf_spinlock, flags);
		FUNC0( tty );
	} else
		FUNC2(&pCh->Pbuf_spinlock, flags);
	return 1;

//	ip2trace (CHANN, ITRC_PUTC, ITRC_RETURN, 1, ch );
}