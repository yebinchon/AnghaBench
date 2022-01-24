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
struct qeth_card {int /*<<< orphan*/  dev; } ;
struct in_device {int /*<<< orphan*/  mc_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 struct in_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,struct in_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct qeth_card *card)
{
	struct in_device *in4_dev;

	FUNC0(TRACE, 4, "chkmcv4");
	in4_dev = FUNC1(card->dev);
	if (in4_dev == NULL)
		return;
	FUNC5(&in4_dev->mc_list_lock);
	FUNC3(card, in4_dev);
	FUNC4(card);
	FUNC6(&in4_dev->mc_list_lock);
	FUNC2(in4_dev);
}