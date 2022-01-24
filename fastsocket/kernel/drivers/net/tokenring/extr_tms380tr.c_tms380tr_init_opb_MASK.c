#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char* NodeAddr; int /*<<< orphan*/ * ProdIDAddr; int /*<<< orphan*/  TXBufMax; int /*<<< orphan*/  TXBufMin; scalar_t__ Reserved; void* BufSize; void* TxListSize; void* RxListSize; scalar_t__ FunctAddr; scalar_t__ GroupAddr; int /*<<< orphan*/  FullDuplex; int /*<<< orphan*/  OPENOptions; } ;
struct net_local {TYPE_1__ ocpl; scalar_t__ dmabuffer; scalar_t__ ProductID; } ;
struct net_device {scalar_t__ dev_addr; } ;

/* Variables and functions */
 unsigned short BUFFER_SIZE ; 
 int /*<<< orphan*/  ENABLE_FULL_DUPLEX_SELECTION ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  OPEN_FULL_DUPLEX_OFF ; 
 unsigned short RPL_SIZE ; 
 unsigned short TPL_SIZE ; 
 int /*<<< orphan*/  TX_BUF_MAX ; 
 int /*<<< orphan*/  TX_BUF_MIN ; 
 void* FUNC2 (unsigned short) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 struct net_local* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct net_local *tp;
	unsigned long Addr;
	unsigned short RplSize    = RPL_SIZE;
	unsigned short TplSize    = TPL_SIZE;
	unsigned short BufferSize = BUFFER_SIZE;
	int i;

	tp = FUNC4(dev);

	tp->ocpl.OPENOptions 	 = 0;
	tp->ocpl.OPENOptions 	|= ENABLE_FULL_DUPLEX_SELECTION;
	tp->ocpl.FullDuplex 	 = 0;
	tp->ocpl.FullDuplex 	|= OPEN_FULL_DUPLEX_OFF;

        /* 
	 * Set node address 
	 *
	 * We go ahead and put it in the OPB even though on
	 * most of the generic adapters this isn't required.
	 * Its simpler this way.  -- ASF
	 */
        for (i=0;i<6;i++)
                tp->ocpl.NodeAddr[i] = ((unsigned char *)dev->dev_addr)[i];

	tp->ocpl.GroupAddr	 = 0;
	tp->ocpl.FunctAddr	 = 0;
	tp->ocpl.RxListSize	 = FUNC2((unsigned short)RplSize);
	tp->ocpl.TxListSize	 = FUNC2((unsigned short)TplSize);
	tp->ocpl.BufSize	 = FUNC2((unsigned short)BufferSize);
	tp->ocpl.Reserved	 = 0;
	tp->ocpl.TXBufMin	 = TX_BUF_MIN;
	tp->ocpl.TXBufMax	 = TX_BUF_MAX;

	Addr = FUNC3(((char *)tp->ProductID - (char *)tp) + tp->dmabuffer);

	tp->ocpl.ProdIDAddr[0]	 = FUNC1(Addr);
	tp->ocpl.ProdIDAddr[1]	 = FUNC0(Addr);

	return;
}