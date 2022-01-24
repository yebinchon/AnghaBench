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
struct TYPE_9__ {scalar_t__ type; scalar_t__ diagass_support; } ;
struct TYPE_7__ {scalar_t__ supported_funcs; } ;
struct TYPE_6__ {scalar_t__ supported_funcs; } ;
struct TYPE_8__ {TYPE_2__ adp; TYPE_1__ ipa4; } ;
struct qeth_card {TYPE_5__* gdev; TYPE_4__ info; TYPE_3__ options; scalar_t__ read_or_write_problem; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  force_alloc_skb; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  IPA_SETADAPTERPARMS ; 
 int /*<<< orphan*/  IPA_SETADP_SET_DIAG_ASSIST ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_card*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qeth_idx_read_cb ; 
 int /*<<< orphan*/  qeth_idx_write_cb ; 
 int /*<<< orphan*/  FUNC15 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC16 (struct qeth_card*) ; 
 scalar_t__ FUNC17 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct qeth_card*) ; 
 int FUNC19 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC22 (struct qeth_card*) ; 

int FUNC23(struct qeth_card *card)
{
	int retries = 3;
	int rc;

	FUNC4(SETUP, 2, "hrdsetup");
	FUNC6(&card->force_alloc_skb, 0);
	FUNC13(card);
retry:
	if (retries < 3) {
		FUNC3(2, "%s Retrying to do IDX activates.\n",
			FUNC9(&card->gdev->dev));
		FUNC7(FUNC0(card));
		FUNC7(FUNC2(card));
		FUNC7(FUNC1(card));
		FUNC8(FUNC1(card));
		FUNC8(FUNC2(card));
		FUNC8(FUNC0(card));
	}
	rc = FUNC19(card, card->info.type != QETH_CARD_TYPE_IQD);
	if (rc == -ERESTARTSYS) {
		FUNC4(SETUP, 2, "break1");
		return rc;
	} else if (rc) {
		FUNC5(SETUP, 2, "1err%d", rc);
		if (--retries < 0)
			goto out;
		else
			goto retry;
	}
	FUNC12(card);
	FUNC16(card);
	FUNC15(card);
	rc = FUNC14(&card->read, qeth_idx_read_cb);
	if (rc == -ERESTARTSYS) {
		FUNC4(SETUP, 2, "break2");
		return rc;
	} else if (rc) {
		FUNC5(SETUP, 2, "3err%d", rc);
		if (--retries < 0)
			goto out;
		else
			goto retry;
	}
	rc = FUNC14(&card->write, qeth_idx_write_cb);
	if (rc == -ERESTARTSYS) {
		FUNC4(SETUP, 2, "break3");
		return rc;
	} else if (rc) {
		FUNC5(SETUP, 2, "4err%d", rc);
		if (--retries < 0)
			goto out;
		else
			goto retry;
	}
	card->read_or_write_problem = 0;
	rc = FUNC18(card);
	if (rc) {
		FUNC5(SETUP, 2, "5err%d", rc);
		goto out;
	}

	card->options.ipa4.supported_funcs = 0;
	card->options.adp.supported_funcs = 0;
	card->info.diagass_support = 0;
	FUNC20(card, QETH_PROT_IPV4);
	if (FUNC17(card, IPA_SETADAPTERPARMS))
		FUNC21(card);
	if (FUNC11(card, IPA_SETADP_SET_DIAG_ASSIST))
		FUNC22(card);
	return 0;
out:
	FUNC10(&card->gdev->dev, "The qeth device driver failed to recover "
		"an error on the device\n");
	FUNC3(2, "%s Initialization in hardsetup failed! rc=%d\n",
		FUNC9(&card->gdev->dev), rc);
	return rc;
}