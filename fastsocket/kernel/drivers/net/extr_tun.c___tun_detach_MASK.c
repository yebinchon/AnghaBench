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
struct TYPE_4__ {TYPE_1__* sk; int /*<<< orphan*/ * file; } ;
struct tun_struct {int /*<<< orphan*/  dev; TYPE_2__ socket; int /*<<< orphan*/ * tfile; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tun_struct *tun)
{
	/* Detach from net device */
	FUNC1(tun->dev);
	tun->tfile = NULL;
	tun->socket.file = NULL;
	FUNC2(tun->dev);

	/* Drop read queue */
	FUNC3(&tun->socket.sk->sk_receive_queue);

	/* Drop the extra count on the net device */
	FUNC0(tun->dev);
}