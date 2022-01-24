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
struct TYPE_4__ {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  port; int /*<<< orphan*/  irq; } ;
typedef  TYPE_1__ act2000_card ;

/* Variables and functions */
 int ACT2000_FLAGS_IVALID ; 
 int ACT2000_FLAGS_PVALID ; 
 int /*<<< orphan*/  ISA_REGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(act2000_card * card)
{
        unsigned long flags;

        FUNC2(&card->lock, flags);
        if (card->flags & ACT2000_FLAGS_IVALID)
                FUNC0(card->irq, card);

        card->flags &= ~ACT2000_FLAGS_IVALID;
        if (card->flags & ACT2000_FLAGS_PVALID)
                FUNC1(card->port, ISA_REGION);
        card->flags &= ~ACT2000_FLAGS_PVALID;
        FUNC3(&card->lock, flags);
}