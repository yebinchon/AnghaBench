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
struct qeth_card {int /*<<< orphan*/  qeth_service_level; struct qeth_card* ip_tbd_list; scalar_t__ dev; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct qeth_card *card)
{

	FUNC1(SETUP, 2, "freecrd");
	FUNC0(SETUP, 2, &card, sizeof(void *));
	FUNC4(&card->read);
	FUNC4(&card->write);
	if (card->dev)
		FUNC2(card->dev);
	FUNC3(card->ip_tbd_list);
	FUNC5(card);
	FUNC6(&card->qeth_service_level);
	FUNC3(card);
}