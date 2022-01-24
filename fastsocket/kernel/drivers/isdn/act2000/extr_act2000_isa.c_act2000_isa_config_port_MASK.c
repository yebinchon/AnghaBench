#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; unsigned short port; int /*<<< orphan*/  regname; } ;
typedef  TYPE_1__ act2000_card ;

/* Variables and functions */
 int ACT2000_FLAGS_PVALID ; 
 int /*<<< orphan*/  ACT2000_PORTLEN ; 
 int EBUSY ; 
 int /*<<< orphan*/  ISA_REGION ; 
 int /*<<< orphan*/  FUNC0 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(act2000_card * card, unsigned short portbase)
{
        if (card->flags & ACT2000_FLAGS_PVALID) {
                FUNC0(card->port, ISA_REGION);
                card->flags &= ~ACT2000_FLAGS_PVALID;
        }
	if (FUNC1(portbase, ACT2000_PORTLEN, card->regname) == NULL)
		return -EBUSY;
	else {
                card->port = portbase;
                card->flags |= ACT2000_FLAGS_PVALID;
                return 0;
        }
}