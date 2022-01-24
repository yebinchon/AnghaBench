#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_card_driver {int /*<<< orphan*/  stop_iso; int /*<<< orphan*/  free_iso_context; int /*<<< orphan*/  (* update_phy_reg ) (struct fw_card*,int,int,int /*<<< orphan*/ ) ;} ;
struct fw_card {int /*<<< orphan*/  flush_timer; int /*<<< orphan*/  transaction_list; int /*<<< orphan*/  done; struct fw_card_driver* driver; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int PHY_CONTENDER ; 
 int PHY_LINK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  card_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fw_card_driver dummy_driver_template ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_card*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_card*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct fw_card *card)
{
	struct fw_card_driver dummy_driver = dummy_driver_template;

	card->driver->update_phy_reg(card, 4,
				     PHY_LINK_ACTIVE | PHY_CONTENDER, 0);
	FUNC3(card, 1);

	FUNC7(&card_mutex);
	FUNC5(&card->link);
	FUNC8(&card_mutex);

	/* Switch off most of the card driver interface. */
	dummy_driver.free_iso_context	= card->driver->free_iso_context;
	dummy_driver.stop_iso		= card->driver->stop_iso;
	card->driver = &dummy_driver;

	FUNC4(card);

	/* Wait for all users, especially device workqueue jobs, to finish. */
	FUNC2(card);
	FUNC10(&card->done);

	FUNC0(!FUNC6(&card->transaction_list));
	FUNC1(&card->flush_timer);
}