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
struct TYPE_5__ {int Pbuf_stuff; int /*<<< orphan*/  Pbuf_spinlock; int /*<<< orphan*/ * Pbuf; } ;
typedef  TYPE_2__* PTTY ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4( PTTY tty )
{
	int   strip;
	i2ChanStrPtr  pCh = tty->driver_data;
	unsigned long flags;

	FUNC2(&pCh->Pbuf_spinlock, flags);
	if ( pCh->Pbuf_stuff ) {

//		ip2trace (CHANN, ITRC_PUTC, 10, 1, strip );

		//
		// We may need to restart i2Output if it does not fullfill this request
		//
		strip = FUNC0( pCh, pCh->Pbuf, pCh->Pbuf_stuff);
		if ( strip != pCh->Pbuf_stuff ) {
			FUNC1( pCh->Pbuf, &pCh->Pbuf[strip], pCh->Pbuf_stuff - strip );
		}
		pCh->Pbuf_stuff -= strip;
	}
	FUNC3(&pCh->Pbuf_spinlock, flags);
}