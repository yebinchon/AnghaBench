#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_11__ {int len; int modulo; } ;
struct TYPE_7__ {TYPE_5__ ncpi; int /*<<< orphan*/  ncci; } ;
struct TYPE_8__ {TYPE_1__ disconnect_b3_req; } ;
struct TYPE_9__ {TYPE_2__ msg; } ;
typedef  TYPE_3__ actcapi_msg ;
struct TYPE_10__ {int /*<<< orphan*/  fsm_state; int /*<<< orphan*/  ncci; } ;
typedef  TYPE_4__ act2000_chan ;
typedef  int /*<<< orphan*/  act2000_card ;

/* Variables and functions */
 int /*<<< orphan*/  ACT2000_STATE_BHWAIT ; 
 int /*<<< orphan*/  ACTCAPI_CHKSKB ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  ACTCAPI_QUEUE_TX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(act2000_card *card, act2000_chan *chan)
{
	actcapi_msg *m;
	struct sk_buff *skb;

	FUNC0(17, 0x84, 0x00);
	ACTCAPI_CHKSKB;
	m->msg.disconnect_b3_req.ncci = chan->ncci;
	FUNC1(&m->msg.disconnect_b3_req.ncpi, 0,
	       sizeof(m->msg.disconnect_b3_req.ncpi));
	m->msg.disconnect_b3_req.ncpi.len = 13;
	m->msg.disconnect_b3_req.ncpi.modulo = 8;
	chan->fsm_state = ACT2000_STATE_BHWAIT;
	ACTCAPI_QUEUE_TX;
}