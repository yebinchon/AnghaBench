#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_6__ {scalar_t__ class; } ;
struct TYPE_10__ {TYPE_1__ dev; } ;
struct TYPE_7__ {TYPE_5__ dev; } ;
struct TYPE_8__ {TYPE_2__ dch; int /*<<< orphan*/  (* release ) (TYPE_3__*) ;} ;
struct tiger_hw {scalar_t__ irq; int /*<<< orphan*/  pdev; int /*<<< orphan*/  list; int /*<<< orphan*/  dma; scalar_t__ dma_p; TYPE_4__* bc; TYPE_3__ isac; scalar_t__ base_s; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {struct tiger_hw* hrbuf; struct tiger_hw* hsbuf; int /*<<< orphan*/  bch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISDN_P_NONE ; 
 int /*<<< orphan*/  NJ_DMA_SIZE ; 
 int /*<<< orphan*/  card_lock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct tiger_hw *card)
{
	u_long flags;
	int i;

	if (card->base_s) {
		FUNC12(&card->lock, flags);
		FUNC6(card);
		FUNC5(&card->bc[0], ISDN_P_NONE);
		FUNC5(&card->bc[1], ISDN_P_NONE);
		card->isac.release(&card->isac);
		FUNC13(&card->lock, flags);
		FUNC11(card->base, card->base_s);
		card->base_s = 0;
	}
	if (card->irq > 0)
		FUNC0(card->irq, card);
	if (card->isac.dch.dev.dev.class)
		FUNC4(&card->isac.dch.dev);
	
	for (i = 0; i < 2; i++) {
		FUNC3(&card->bc[i].bch);
		FUNC1(card->bc[i].hsbuf);
		FUNC1(card->bc[i].hrbuf);
	}
	if (card->dma_p)
		FUNC9(card->pdev, NJ_DMA_SIZE,
			card->dma_p, card->dma);
	FUNC15(&card_lock, flags);
	FUNC2(&card->list);
	FUNC16(&card_lock, flags);
	FUNC7(card->pdev);
	FUNC8(card->pdev);
	FUNC10(card->pdev, NULL);
	FUNC1(card);
}