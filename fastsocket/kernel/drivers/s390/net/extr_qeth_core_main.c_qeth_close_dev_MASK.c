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
struct qeth_card {int /*<<< orphan*/  close_dev_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  qeth_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct qeth_card *card)
{
	FUNC0(TRACE, 2, "cldevsubm");
	FUNC1(qeth_wq, &card->close_dev_work);
}