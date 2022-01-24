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
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*) ; 
 scalar_t__ FUNC11 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct qeth_card *card)
{
	FUNC0(TRACE, 3, "strtipas");

	if (FUNC11(card, 0))
		return -EIO;
	FUNC1(card);	/* go on*/
	FUNC4(card);	/* go on*/
	FUNC7(card);	/* go on*/
	FUNC10(card);		/* go on*/
	FUNC6(card);		/* go on*/
	FUNC5(card);		/* go on*/
	FUNC2(card);		/* go on*/
	FUNC3(card);		/* go on*/
	FUNC9(card);
	FUNC8(card);		/* go on*/
	return 0;
}