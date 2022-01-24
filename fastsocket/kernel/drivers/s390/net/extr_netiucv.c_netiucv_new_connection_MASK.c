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
struct net_device {int dummy; } ;
struct iucv_connection {void* rx_buff; void* tx_buff; int /*<<< orphan*/  list; int /*<<< orphan*/  fsm; int /*<<< orphan*/  userid; int /*<<< orphan*/  timer; int /*<<< orphan*/  max_buffsize; struct net_device* netdev; int /*<<< orphan*/  collect_lock; int /*<<< orphan*/  commit_queue; int /*<<< orphan*/  collect_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_FSM_LEN ; 
 int /*<<< orphan*/  CONN_STATE_INVALID ; 
 int /*<<< orphan*/  CONN_STATE_STOPPED ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  NETIUCV_BUFSIZE_DEFAULT ; 
 int /*<<< orphan*/  NR_CONN_EVENTS ; 
 int /*<<< orphan*/  NR_CONN_STATES ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  conn_event_names ; 
 int /*<<< orphan*/  conn_fsm ; 
 int /*<<< orphan*/  conn_state_names ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  iucv_connection_list ; 
 int /*<<< orphan*/  iucv_connection_rwlock ; 
 int /*<<< orphan*/  FUNC4 (struct iucv_connection*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 struct iucv_connection* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iucv_connection *FUNC13(struct net_device *dev,
						      char *username)
{
	struct iucv_connection *conn;

	conn = FUNC6(sizeof(*conn), GFP_KERNEL);
	if (!conn)
		goto out;
	FUNC9(&conn->collect_queue);
	FUNC9(&conn->commit_queue);
	FUNC10(&conn->collect_lock);
	conn->max_buffsize = NETIUCV_BUFSIZE_DEFAULT;
	conn->netdev = dev;

	conn->rx_buff = FUNC0(conn->max_buffsize, GFP_KERNEL | GFP_DMA);
	if (!conn->rx_buff)
		goto out_conn;
	conn->tx_buff = FUNC0(conn->max_buffsize, GFP_KERNEL | GFP_DMA);
	if (!conn->tx_buff)
		goto out_rx;
	conn->fsm = FUNC3("netiucvconn", conn_state_names,
			     conn_event_names, NR_CONN_STATES,
			     NR_CONN_EVENTS, conn_fsm, CONN_FSM_LEN,
			     GFP_KERNEL);
	if (!conn->fsm)
		goto out_tx;

	FUNC2(conn->fsm, &conn->timer);
	FUNC1(conn->fsm, CONN_STATE_INVALID);

	if (username) {
		FUNC8(conn->userid, username, 9);
		FUNC1(conn->fsm, CONN_STATE_STOPPED);
	}

	FUNC11(&iucv_connection_rwlock);
	FUNC7(&conn->list, &iucv_connection_list);
	FUNC12(&iucv_connection_rwlock);
	return conn;

out_tx:
	FUNC5(conn->tx_buff);
out_rx:
	FUNC5(conn->rx_buff);
out_conn:
	FUNC4(conn);
out:
	return NULL;
}