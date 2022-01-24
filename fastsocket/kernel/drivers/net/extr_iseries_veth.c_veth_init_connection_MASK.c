#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct veth_msg {int token; } ;
struct TYPE_3__ {int num_buffers; int ack_timeout; int /*<<< orphan*/  ack_threshold; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct veth_lpar_connection {size_t remote_lp; int reset_timeout; int num_events; TYPE_1__ local_caps; struct veth_msg* msgs; int /*<<< orphan*/  kobject; int /*<<< orphan*/  pending_acks; TYPE_2__ reset_timer; TYPE_2__ ack_timer; int /*<<< orphan*/  statemachine_wq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_THRESHOLD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VETH_ACKTIMEOUT ; 
 int VETH_NUMBUFFERS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct veth_msg* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct veth_lpar_connection* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t this_lp ; 
 int FUNC8 (size_t,int) ; 
 struct veth_lpar_connection** veth_cnx ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  veth_lpar_connection_ktype ; 
 int /*<<< orphan*/  FUNC10 (struct veth_lpar_connection*,struct veth_msg*) ; 
 int /*<<< orphan*/  veth_statemachine ; 
 int /*<<< orphan*/  veth_timed_ack ; 
 int /*<<< orphan*/  veth_timed_reset ; 

__attribute__((used)) static int FUNC11(u8 rlp)
{
	struct veth_lpar_connection *cnx;
	struct veth_msg *msgs;
	int i;

	if ( (rlp == this_lp)
	     || ! FUNC0(this_lp, rlp) )
		return 0;

	cnx = FUNC5(sizeof(*cnx), GFP_KERNEL);
	if (! cnx)
		return -ENOMEM;

	cnx->remote_lp = rlp;
	FUNC7(&cnx->lock);
	FUNC1(&cnx->statemachine_wq, veth_statemachine);

	FUNC2(&cnx->ack_timer);
	cnx->ack_timer.function = veth_timed_ack;
	cnx->ack_timer.data = (unsigned long) cnx;

	FUNC2(&cnx->reset_timer);
	cnx->reset_timer.function = veth_timed_reset;
	cnx->reset_timer.data = (unsigned long) cnx;
	cnx->reset_timeout = 5 * HZ * (VETH_ACKTIMEOUT / 1000000);

	FUNC6(&cnx->pending_acks, 0xff, sizeof (cnx->pending_acks));

	veth_cnx[rlp] = cnx;

	/* This gets us 1 reference, which is held on behalf of the driver
	 * infrastructure. It's released at module unload. */
	FUNC4(&cnx->kobject, &veth_lpar_connection_ktype);

	msgs = FUNC3(VETH_NUMBUFFERS, sizeof(struct veth_msg), GFP_KERNEL);
	if (! msgs) {
		FUNC9("Can't allocate buffers for LPAR %d.\n", rlp);
		return -ENOMEM;
	}

	cnx->msgs = msgs;

	for (i = 0; i < VETH_NUMBUFFERS; i++) {
		msgs[i].token = i;
		FUNC10(cnx, msgs + i);
	}

	cnx->num_events = FUNC8(rlp, 2 + VETH_NUMBUFFERS);

	if (cnx->num_events < (2 + VETH_NUMBUFFERS)) {
		FUNC9("Can't allocate enough events for LPAR %d.\n", rlp);
		return -ENOMEM;
	}

	cnx->local_caps.num_buffers = VETH_NUMBUFFERS;
	cnx->local_caps.ack_threshold = ACK_THRESHOLD;
	cnx->local_caps.ack_timeout = VETH_ACKTIMEOUT;

	return 0;
}