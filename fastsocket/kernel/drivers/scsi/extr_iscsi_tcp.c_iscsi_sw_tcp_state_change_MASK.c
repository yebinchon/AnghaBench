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
struct sock {int /*<<< orphan*/  sk_callback_lock; struct iscsi_conn* sk_user_data; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {void (* old_state_change ) (struct sock*) ;} ;
struct iscsi_session {int dummy; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; struct iscsi_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct iscsi_tcp_conn *tcp_conn;
	struct iscsi_sw_tcp_conn *tcp_sw_conn;
	struct iscsi_conn *conn;
	struct iscsi_session *session;
	void (*old_state_change)(struct sock *);

	FUNC1(&sk->sk_callback_lock);
	conn = sk->sk_user_data;
	if (!conn) {
		FUNC2(&sk->sk_callback_lock);
		return;
	}
	session = conn->session;

	FUNC0(sk);

	tcp_conn = conn->dd_data;
	tcp_sw_conn = tcp_conn->dd_data;
	old_state_change = tcp_sw_conn->old_state_change;

	FUNC2(&sk->sk_callback_lock);

	old_state_change(sk);
}