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
struct spider_net_card {TYPE_1__* netdev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct spider_net_card*) ; 
 scalar_t__ FUNC2 (struct spider_net_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct spider_net_card *card)
{
	if ((FUNC2(card, 0) != 0) &&
	    (card->netdev->flags & IFF_UP)) {
		FUNC1(card);
		FUNC0(card->netdev);
	}
}