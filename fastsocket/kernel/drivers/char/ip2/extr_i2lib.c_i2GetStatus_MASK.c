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
typedef  int /*<<< orphan*/  i2eBordStrPtr ;
typedef  TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {unsigned short dataSetIn; int /*<<< orphan*/  pMyBord; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANN ; 
 int I2_BRK ; 
 int I2_DCTS ; 
 int I2_DDCD ; 
 int I2_DDSR ; 
 int I2_DRI ; 
 int I2_FRA ; 
 int I2_OVR ; 
 int I2_PAR ; 
 int /*<<< orphan*/  ITRC_ENTER ; 
 int /*<<< orphan*/  ITRC_RETURN ; 
 int /*<<< orphan*/  ITRC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,...) ; 

__attribute__((used)) static int
FUNC2(i2ChanStrPtr pCh, int resetBits)
{
	unsigned short status;
	i2eBordStrPtr pB;

	FUNC1 (CHANN, ITRC_STATUS, ITRC_ENTER, 2, pCh->dataSetIn, resetBits );

	// Make sure the channel exists, otherwise do nothing */
	if ( !FUNC0 ( pCh ) )
		return -1;

	pB = pCh->pMyBord;

	status = pCh->dataSetIn;

	// Clear any specified error bits: but note that only actual error bits can
	// be cleared, regardless of the value passed.
	if (resetBits)
	{
		pCh->dataSetIn &= ~(resetBits & (I2_BRK | I2_PAR | I2_FRA | I2_OVR));
		pCh->dataSetIn &= ~(I2_DDCD | I2_DCTS | I2_DDSR | I2_DRI);
	}

	FUNC1 (CHANN, ITRC_STATUS, ITRC_RETURN, 1, pCh->dataSetIn );

	return status;
}