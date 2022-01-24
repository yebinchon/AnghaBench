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
struct tty_struct {int receive_room; struct syncppp* disc_data; TYPE_1__* ops; } ;
struct TYPE_4__ {int hdrlen; int speed; void* mtu; int /*<<< orphan*/ * ops; struct syncppp* private; } ;
struct syncppp {unsigned int* xaccm; unsigned int raccm; TYPE_2__ chan; int /*<<< orphan*/  dead_cmp; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  tsk; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  recv_lock; int /*<<< orphan*/  xmit_lock; void* mru; struct tty_struct* tty; } ;
struct TYPE_3__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* PPP_MRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct syncppp*) ; 
 struct syncppp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ppp_sync_process ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static int
FUNC9(struct tty_struct *tty)
{
	struct syncppp *ap;
	int err;
	int speed;

	if (tty->ops->write == NULL)
		return -EOPNOTSUPP;

	ap = FUNC3(sizeof(*ap), GFP_KERNEL);
	err = -ENOMEM;
	if (!ap)
		goto out;

	/* initialize the syncppp structure */
	ap->tty = tty;
	ap->mru = PPP_MRU;
	FUNC6(&ap->xmit_lock);
	FUNC6(&ap->recv_lock);
	ap->xaccm[0] = ~0U;
	ap->xaccm[3] = 0x60000000U;
	ap->raccm = ~0U;

	FUNC5(&ap->rqueue);
	FUNC7(&ap->tsk, ppp_sync_process, (unsigned long) ap);

	FUNC0(&ap->refcnt, 1);
	FUNC1(&ap->dead_cmp);

	ap->chan.private = ap;
	ap->chan.ops = &sync_ops;
	ap->chan.mtu = PPP_MRU;
	ap->chan.hdrlen = 2;	/* for A/C bytes */
	speed = FUNC8(tty);
	ap->chan.speed = speed;
	err = FUNC4(&ap->chan);
	if (err)
		goto out_free;

	tty->disc_data = ap;
	tty->receive_room = 65536;
	return 0;

 out_free:
	FUNC2(ap);
 out:
	return err;
}