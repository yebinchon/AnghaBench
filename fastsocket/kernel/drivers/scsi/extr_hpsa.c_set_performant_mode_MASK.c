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
struct ctlr_info {int transMethod; int* blockFetchTable; int msix_vector; int nreply_queues; } ;
struct TYPE_2__ {size_t SGList; int ReplyQueue; } ;
struct CommandList {int busaddr; TYPE_1__ Header; } ;

/* Variables and functions */
 int CFGTBL_Trans_Performant ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct ctlr_info *h, struct CommandList *c)
{
	if (FUNC0(h->transMethod & CFGTBL_Trans_Performant)) {
		c->busaddr |= 1 | (h->blockFetchTable[c->Header.SGList] << 1);
		if (FUNC0(h->msix_vector))
			c->Header.ReplyQueue =
				FUNC1() % h->nreply_queues;
	}
}