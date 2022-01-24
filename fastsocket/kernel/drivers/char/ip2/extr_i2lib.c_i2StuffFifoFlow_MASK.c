#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
typedef  TYPE_2__* i2ChanStrPtr ;
typedef  int /*<<< orphan*/  flowIn ;
struct TYPE_8__ {int /*<<< orphan*/  infl; } ;
struct TYPE_7__ {int /*<<< orphan*/  debugFlowCount; int /*<<< orphan*/  i2eFifoRemains; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITRC_ENTER ; 
 int /*<<< orphan*/  ITRC_NO_PORT ; 
 int /*<<< orphan*/  ITRC_RETURN ; 
 int /*<<< orphan*/  ITRC_SFLOW ; 
 int /*<<< orphan*/  NEED_FLOW ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned short) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned char*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 unsigned short FUNC4 (int,int) ; 

__attribute__((used)) static inline void
FUNC5(i2eBordStrPtr pB)
{
	i2ChanStrPtr pCh;
	unsigned short paddedSize = FUNC4(sizeof(flowIn), 2);

	FUNC3 (ITRC_NO_PORT, ITRC_SFLOW, ITRC_ENTER, 2,
		pB->i2eFifoRemains, paddedSize );

	// Continue processing so long as there are entries, or there is room in the
	// fifo. Each entry represents a channel with something to do.
	while ( (NULL != (pCh = FUNC1(pB,NEED_FLOW)))) {
		pB->debugFlowCount++;

		// NO Chan LOCK needed ???
		if ( 0 == FUNC2(pB,(unsigned char *)&(pCh->infl),paddedSize,0)) {
			break;
		}
#ifdef DEBUG_FIFO
		WriteDBGBuf("FLOW",(unsigned char *) &(pCh->infl), paddedSize);
#endif /* DEBUG_FIFO */

	}  // Either clogged or finished all the work

	FUNC3 (ITRC_NO_PORT, ITRC_SFLOW, ITRC_RETURN, 0 );
}