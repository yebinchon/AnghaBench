#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; } ;
struct qeth_card {TYPE_1__ info; } ;

/* Variables and functions */
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  SETUP ; 
 int FUNC2 (struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*) ; 
 int FUNC4 (struct qeth_card*) ; 
 int FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*) ; 
 int FUNC7 (struct qeth_card*) ; 
 int FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_card*,int) ; 
 int FUNC10 (struct qeth_card*) ; 
 int FUNC11 (struct qeth_card*) ; 
 int FUNC12 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC13(struct qeth_card *card)
{
	int rc;

	FUNC0(SETUP, 2, "mpcinit");

	rc = FUNC7(card);
	if (rc) {
		FUNC1(SETUP, 2, "1err%d", rc);
		return rc;
	}
	rc = FUNC3(card);
	if (rc) {
		FUNC1(SETUP, 2, "2err%d", rc);
		goto out_qdio;
	}
	rc = FUNC4(card);
	if (rc) {
		FUNC1(SETUP, 2, "3err%d", rc);
		goto out_qdio;
	}
	rc = FUNC11(card);
	if (rc) {
		FUNC1(SETUP, 2, "4err%d", rc);
		goto out_qdio;
	}
	rc = FUNC12(card);
	if (rc) {
		FUNC1(SETUP, 2, "5err%d", rc);
		goto out_qdio;
	}
	rc = FUNC2(card);
	if (rc) {
		FUNC1(SETUP, 2, "5err%d", rc);
		goto out_qdio;
	}
	rc = FUNC10(card);
	if (rc) {
		FUNC1(SETUP, 2, "6err%d", rc);
		FUNC6(card);
		goto out_qdio;
	}
	rc = FUNC8(card);
	if (rc) {
		FUNC1(SETUP, 2, "7err%d", rc);
		goto out_qdio;
	}
	rc = FUNC5(card);
	if (rc) {
		FUNC1(SETUP, 2, "8err%d", rc);
		goto out_qdio;
	}

	return 0;
out_qdio:
	FUNC9(card, card->info.type != QETH_CARD_TYPE_IQD);
	return rc;
}