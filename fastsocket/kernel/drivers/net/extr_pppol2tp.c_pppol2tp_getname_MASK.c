#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct sockaddr_pppol2tp {struct sockaddr pppol2tp; int /*<<< orphan*/  sa_protocol; int /*<<< orphan*/  sa_family; } ;
struct pppol2tp_session {struct sockaddr_pppol2tp tunnel_addr; } ;
struct pppol2tp_addr {int dummy; } ;
struct TYPE_3__ {scalar_t__ sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PPPOX ; 
 int EBADF ; 
 int ENOTCONN ; 
 scalar_t__ PPPOX_CONNECTED ; 
 int /*<<< orphan*/  PX_PROTO_OL2TP ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,struct sockaddr_pppol2tp*,int) ; 
 struct pppol2tp_session* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct sockaddr *uaddr,
			    int *usockaddr_len, int peer)
{
	int len = sizeof(struct sockaddr_pppol2tp);
	struct sockaddr_pppol2tp sp;
	int error = 0;
	struct pppol2tp_session *session;

	error = -ENOTCONN;
	if (sock->sk->sk_state != PPPOX_CONNECTED)
		goto end;

	session = FUNC1(sock->sk);
	if (session == NULL) {
		error = -EBADF;
		goto end;
	}

	sp.sa_family	= AF_PPPOX;
	sp.sa_protocol	= PX_PROTO_OL2TP;
	FUNC0(&sp.pppol2tp, &session->tunnel_addr,
	       sizeof(struct pppol2tp_addr));

	FUNC0(uaddr, &sp, len);

	*usockaddr_len = len;

	error = 0;
	FUNC2(sock->sk);

end:
	return error;
}