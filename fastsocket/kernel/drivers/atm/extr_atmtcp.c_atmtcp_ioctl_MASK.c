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
struct socket {int /*<<< orphan*/  state; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
#define  ATMTCP_CREATE 130 
#define  ATMTCP_REMOVE 129 
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOIOCTLCMD ; 
 int EPERM ; 
#define  SIOCSIFATMTCP 128 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct atm_vcc*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, unsigned int cmd, unsigned long arg)
{
	int err = 0;
	struct atm_vcc *vcc = FUNC0(sock);

	if (cmd != SIOCSIFATMTCP && cmd != ATMTCP_CREATE && cmd != ATMTCP_REMOVE)
		return -ENOIOCTLCMD;

	if (!FUNC5(CAP_NET_ADMIN))
		return -EPERM;

	switch (cmd) {
		case SIOCSIFATMTCP:
			err = FUNC2(vcc, (int) arg);
			if (err >= 0) {
				sock->state = SS_CONNECTED;
				FUNC1(THIS_MODULE);
			}
			break;
		case ATMTCP_CREATE:
			err = FUNC3((int) arg);
			break;
		case ATMTCP_REMOVE:
			err = FUNC4((int) arg);
			break;
	}
	return err;
}