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
struct sdio_func {int dummy; } ;
struct btmrvl_sdio_card {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MODULE_SHUTDOWN_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btmrvl_sdio_card*) ; 
 struct btmrvl_sdio_card* FUNC6 (struct sdio_func*) ; 
 scalar_t__ user_rmmod ; 

__attribute__((used)) static void FUNC7(struct sdio_func *func)
{
	struct btmrvl_sdio_card *card;

	if (func) {
		card = FUNC6(func);
		if (card) {
			/* Send SHUTDOWN command & disable interrupt
			 * if user removes the module.
			 */
			if (user_rmmod) {
				FUNC4(card->priv,
							MODULE_SHUTDOWN_REQ);
				FUNC2(card);
			}
			FUNC0("unregester dev");
			FUNC3(card);
			FUNC1(card->priv);
			FUNC5(card);
		}
	}
}