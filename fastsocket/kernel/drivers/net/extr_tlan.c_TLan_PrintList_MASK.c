#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* buffer; int /*<<< orphan*/  frameSize; int /*<<< orphan*/  cStat; int /*<<< orphan*/  forward; } ;
struct TYPE_4__ {int /*<<< orphan*/  address; int /*<<< orphan*/  count; } ;
typedef  TYPE_2__ TLanList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1( TLanList *list, char *type, int num)
{
	int i;

	FUNC0( "TLAN:   %s List %d at %p\n", type, num, list );
	FUNC0( "TLAN:      Forward    = 0x%08x\n",  list->forward );
	FUNC0( "TLAN:      CSTAT      = 0x%04hx\n", list->cStat );
	FUNC0( "TLAN:      Frame Size = 0x%04hx\n", list->frameSize );
	/* for ( i = 0; i < 10; i++ ) { */
	for ( i = 0; i < 2; i++ ) {
		FUNC0( "TLAN:      Buffer[%d].count, addr = 0x%08x, 0x%08x\n",
			i, list->buffer[i].count, list->buffer[i].address );
	}

}