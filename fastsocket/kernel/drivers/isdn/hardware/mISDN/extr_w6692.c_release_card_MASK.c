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
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  l1; } ;
struct w6692_hw {int fmask; scalar_t__ subtype; int xdata; int /*<<< orphan*/  pdev; int /*<<< orphan*/  list; TYPE_2__ dch; TYPE_1__* bc; int /*<<< orphan*/  addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  bch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_CHANNEL ; 
 int /*<<< orphan*/  ISDN_P_NONE ; 
 scalar_t__ W6692_USR ; 
 int /*<<< orphan*/  W_XDATA ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  card_lock ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int led ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct w6692_hw *card)
{
	u_long	flags;

	FUNC12(&card->lock, flags);
	FUNC1(card);
	FUNC14(&card->bc[0], ISDN_P_NONE);
	FUNC14(&card->bc[1], ISDN_P_NONE);
	if ((card->fmask & led) || card->subtype == W6692_USR) {
		card->xdata |= 0x04;	/*  LED OFF */
		FUNC0(card, W_XDATA, card->xdata);
	}
	FUNC13(&card->lock, flags);
	FUNC2(card->irq, card);
	FUNC4(card->dch.l1, CLOSE_CHANNEL);
	FUNC8(&card->dch.dev);
	FUNC11(card->addr, 256);
	FUNC6(&card->bc[1].bch);
	FUNC6(&card->bc[0].bch);
	FUNC7(&card->dch);
	FUNC15(&card_lock, flags);
	FUNC5(&card->list);
	FUNC16(&card_lock, flags);
	FUNC9(card->pdev);
	FUNC10(card->pdev, NULL);
	FUNC3(card);
}