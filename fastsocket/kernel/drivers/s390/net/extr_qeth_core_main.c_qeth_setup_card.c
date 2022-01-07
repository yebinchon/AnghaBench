
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ invert6; scalar_t__ invert4; scalar_t__ enabled; int entries; } ;
struct TYPE_7__ {void* state; } ;
struct TYPE_6__ {void* state; } ;
struct TYPE_5__ {void* state; } ;
struct qeth_card {int close_dev_work; int buffer_reclaim_work; TYPE_4__ ipato; int wait_q; int cmd_waiter_list; int * ip_tbd_list; int ip_list; int kernel_thread_starter; scalar_t__ thread_running_mask; scalar_t__ thread_allowed_mask; scalar_t__ thread_start_mask; int discipline_mutex; int conf_mutex; int thread_mask_lock; int ip_lock; int lock; int * vlangrp; int mclock; int vlanlock; int * dev; scalar_t__ read_or_write_problem; scalar_t__ lan_online; int state; TYPE_3__ data; TYPE_2__ write; TYPE_1__ read; } ;


 int CARD_STATE_DOWN ;
 void* CH_STATE_DOWN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int qeth_buffer_reclaim_work ;
 int qeth_close_dev_handler ;
 int qeth_init_qdio_info (struct qeth_card*) ;
 int qeth_set_intial_options (struct qeth_card*) ;
 int qeth_start_kernel_thread ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qeth_setup_card(struct qeth_card *card)
{

 QETH_DBF_TEXT(SETUP, 2, "setupcrd");
 QETH_DBF_HEX(SETUP, 2, &card, sizeof(void *));

 card->read.state = CH_STATE_DOWN;
 card->write.state = CH_STATE_DOWN;
 card->data.state = CH_STATE_DOWN;
 card->state = CARD_STATE_DOWN;
 card->lan_online = 0;
 card->read_or_write_problem = 0;
 card->dev = ((void*)0);
 spin_lock_init(&card->vlanlock);
 spin_lock_init(&card->mclock);
 card->vlangrp = ((void*)0);
 spin_lock_init(&card->lock);
 spin_lock_init(&card->ip_lock);
 spin_lock_init(&card->thread_mask_lock);
 mutex_init(&card->conf_mutex);
 mutex_init(&card->discipline_mutex);
 card->thread_start_mask = 0;
 card->thread_allowed_mask = 0;
 card->thread_running_mask = 0;
 INIT_WORK(&card->kernel_thread_starter, qeth_start_kernel_thread);
 INIT_LIST_HEAD(&card->ip_list);
 INIT_LIST_HEAD(card->ip_tbd_list);
 INIT_LIST_HEAD(&card->cmd_waiter_list);
 init_waitqueue_head(&card->wait_q);

 qeth_set_intial_options(card);

 INIT_LIST_HEAD(&card->ipato.entries);
 card->ipato.enabled = 0;
 card->ipato.invert4 = 0;
 card->ipato.invert6 = 0;

 qeth_init_qdio_info(card);
 INIT_DELAYED_WORK(&card->buffer_reclaim_work, qeth_buffer_reclaim_work);
 INIT_WORK(&card->close_dev_work, qeth_close_dev_handler);
 return 0;
}
