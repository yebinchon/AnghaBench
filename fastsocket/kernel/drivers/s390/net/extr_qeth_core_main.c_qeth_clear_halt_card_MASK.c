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
struct qeth_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC2 (struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card, int halt)
{
	int rc = 0;

	FUNC1(TRACE, 3, "clhacrd");
	FUNC0(TRACE, 3, &card, sizeof(void *));

	if (halt)
		rc = FUNC3(card);
	if (rc)
		return rc;
	return FUNC2(card);
}