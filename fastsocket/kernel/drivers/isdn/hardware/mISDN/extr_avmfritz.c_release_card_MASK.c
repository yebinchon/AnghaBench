#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ dch; int /*<<< orphan*/  (* release ) (TYPE_2__*) ;} ;
struct fritzcard {int /*<<< orphan*/  list; int /*<<< orphan*/  pdev; int /*<<< orphan*/  addr; TYPE_2__ isac; int /*<<< orphan*/ * bch; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVM_cnt ; 
 int /*<<< orphan*/  ISDN_P_NONE ; 
 int /*<<< orphan*/  card_lock ; 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC2 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct fritzcard *card)
{
	u_long flags;

	FUNC0(card);
	FUNC10(&card->lock, flags);
	FUNC6(&card->bch[0], ISDN_P_NONE);
	FUNC6(&card->bch[1], ISDN_P_NONE);
	FUNC11(&card->lock, flags);
	card->isac.release(&card->isac);
	FUNC1(card->irq, card);
	FUNC4(&card->bch[1]);
	FUNC4(&card->bch[0]);
	FUNC5(&card->isac.dch.dev);
	FUNC9(card->addr, 32);
	FUNC7(card->pdev);
	FUNC8(card->pdev, NULL);
	FUNC13(&card_lock, flags);
	FUNC3(&card->list);
	FUNC14(&card_lock, flags);
	FUNC2(card);
	AVM_cnt--;
}