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
struct lcs_card {scalar_t__ state; int /*<<< orphan*/  gdev; scalar_t__ dev; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lcs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lcs_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct lcs_card *card)
{
	if (card->dev)
		FUNC3(card->dev);
	FUNC1(card, 0);
	FUNC2(card, 0xffffffff);
	if (card->state != DEV_STATE_DOWN)
		FUNC0(card->gdev, 1);
	return 0;
}