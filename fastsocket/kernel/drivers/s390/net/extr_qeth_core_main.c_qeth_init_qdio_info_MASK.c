#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  entry_list; int /*<<< orphan*/  buf_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  entry_list; int /*<<< orphan*/  buf_count; } ;
struct TYPE_8__ {TYPE_3__ init_pool; TYPE_2__ in_buf_pool; int /*<<< orphan*/  in_buf_size; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct qeth_card {TYPE_4__ qdio; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_IN_BUF_COUNT_DEFAULT ; 
 int /*<<< orphan*/  QETH_IN_BUF_COUNT_HSDEFAULT ; 
 int /*<<< orphan*/  QETH_IN_BUF_SIZE_DEFAULT ; 
 int /*<<< orphan*/  QETH_QDIO_UNINITIALIZED ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qeth_card *card)
{
	FUNC1(SETUP, 4, "intqdinf");
	FUNC2(&card->qdio.state, QETH_QDIO_UNINITIALIZED);
	/* inbound */
	card->qdio.in_buf_size = QETH_IN_BUF_SIZE_DEFAULT;
	if (card->info.type == QETH_CARD_TYPE_IQD)
		card->qdio.init_pool.buf_count = QETH_IN_BUF_COUNT_HSDEFAULT;
	else
		card->qdio.init_pool.buf_count = QETH_IN_BUF_COUNT_DEFAULT;
	card->qdio.in_buf_pool.buf_count = card->qdio.init_pool.buf_count;
	FUNC0(&card->qdio.in_buf_pool.entry_list);
	FUNC0(&card->qdio.init_pool.entry_list);
}