#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {scalar_t__ flush_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANN ; 
 int /*<<< orphan*/  CMD_STARTFL ; 
 int /*<<< orphan*/  CMD_STOPFL ; 
 int /*<<< orphan*/  ITRC_FLUSH ; 
 int /*<<< orphan*/  PTYPE_BYPASS ; 
 int /*<<< orphan*/  PTYPE_INLINE ; 
 scalar_t__ STARTFL_FLAG ; 
 scalar_t__ STOPFL_FLAG ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 

__attribute__((used)) static inline void
FUNC2(i2ChanStrPtr pCh)
{

	FUNC1 (CHANN, ITRC_FLUSH, 1, 1, pCh->flush_flags );

	if (pCh->flush_flags)
		return;

	if ( 1 != FUNC0(PTYPE_BYPASS, pCh, 0, 1, CMD_STARTFL) ) {
		pCh->flush_flags = STARTFL_FLAG;		// Failed - flag for later

		FUNC1 (CHANN, ITRC_FLUSH, 2, 0 );

	} else if ( 1 != FUNC0(PTYPE_INLINE, pCh, 0, 1, CMD_STOPFL) ) {
		pCh->flush_flags = STOPFL_FLAG;		// Failed - flag for later

		FUNC1 (CHANN, ITRC_FLUSH, 3, 0 );
	}
}