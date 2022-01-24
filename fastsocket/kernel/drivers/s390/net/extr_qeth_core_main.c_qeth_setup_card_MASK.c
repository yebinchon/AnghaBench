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
struct TYPE_8__ {scalar_t__ invert6; scalar_t__ invert4; scalar_t__ enabled; int /*<<< orphan*/  entries; } ;
struct TYPE_7__ {void* state; } ;
struct TYPE_6__ {void* state; } ;
struct TYPE_5__ {void* state; } ;
struct qeth_card {int /*<<< orphan*/  close_dev_work; int /*<<< orphan*/  buffer_reclaim_work; TYPE_4__ ipato; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  cmd_waiter_list; int /*<<< orphan*/ * ip_tbd_list; int /*<<< orphan*/  ip_list; int /*<<< orphan*/  kernel_thread_starter; scalar_t__ thread_running_mask; scalar_t__ thread_allowed_mask; scalar_t__ thread_start_mask; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  thread_mask_lock; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/ * vlangrp; int /*<<< orphan*/  mclock; int /*<<< orphan*/  vlanlock; int /*<<< orphan*/ * dev; scalar_t__ read_or_write_problem; scalar_t__ lan_online; int /*<<< orphan*/  state; TYPE_3__ data; TYPE_2__ write; TYPE_1__ read; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_STATE_DOWN ; 
 void* CH_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_buffer_reclaim_work ; 
 int /*<<< orphan*/  qeth_close_dev_handler ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  qeth_start_kernel_thread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct qeth_card *card)
{

	FUNC4(SETUP, 2, "setupcrd");
	FUNC3(SETUP, 2, &card, sizeof(void *));

	card->read.state  = CH_STATE_DOWN;
	card->write.state = CH_STATE_DOWN;
	card->data.state  = CH_STATE_DOWN;
	card->state = CARD_STATE_DOWN;
	card->lan_online = 0;
	card->read_or_write_problem = 0;
	card->dev = NULL;
	FUNC9(&card->vlanlock);
	FUNC9(&card->mclock);
	card->vlangrp = NULL;
	FUNC9(&card->lock);
	FUNC9(&card->ip_lock);
	FUNC9(&card->thread_mask_lock);
	FUNC6(&card->conf_mutex);
	FUNC6(&card->discipline_mutex);
	card->thread_start_mask = 0;
	card->thread_allowed_mask = 0;
	card->thread_running_mask = 0;
	FUNC2(&card->kernel_thread_starter, qeth_start_kernel_thread);
	FUNC1(&card->ip_list);
	FUNC1(card->ip_tbd_list);
	FUNC1(&card->cmd_waiter_list);
	FUNC5(&card->wait_q);
	/* intial options */
	FUNC8(card);
	/* IP address takeover */
	FUNC1(&card->ipato.entries);
	card->ipato.enabled = 0;
	card->ipato.invert4 = 0;
	card->ipato.invert6 = 0;
	/* init QDIO stuff */
	FUNC7(card);
	FUNC0(&card->buffer_reclaim_work, qeth_buffer_reclaim_work);
	FUNC2(&card->close_dev_work, qeth_close_dev_handler);
	return 0;
}