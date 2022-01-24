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
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_tcp_conn {TYPE_1__* rx_hash; struct iscsi_sw_tcp_conn* dd_data; } ;
struct TYPE_4__ {void* tfm; scalar_t__ flags; } ;
struct TYPE_3__ {void* tfm; scalar_t__ flags; } ;
struct iscsi_sw_tcp_conn {TYPE_2__ tx_hash; TYPE_1__ rx_hash; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_conn*,char*) ; 
 struct iscsi_cls_conn* FUNC4 (struct iscsi_cls_session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cls_conn*) ; 

__attribute__((used)) static struct iscsi_cls_conn *
FUNC6(struct iscsi_cls_session *cls_session,
			 uint32_t conn_idx)
{
	struct iscsi_conn *conn;
	struct iscsi_cls_conn *cls_conn;
	struct iscsi_tcp_conn *tcp_conn;
	struct iscsi_sw_tcp_conn *tcp_sw_conn;

	cls_conn = FUNC4(cls_session, sizeof(*tcp_sw_conn),
					conn_idx);
	if (!cls_conn)
		return NULL;
	conn = cls_conn->dd_data;
	tcp_conn = conn->dd_data;
	tcp_sw_conn = tcp_conn->dd_data;

	tcp_sw_conn->tx_hash.tfm = FUNC1("crc32c", 0,
						     CRYPTO_ALG_ASYNC);
	tcp_sw_conn->tx_hash.flags = 0;
	if (FUNC0(tcp_sw_conn->tx_hash.tfm))
		goto free_conn;

	tcp_sw_conn->rx_hash.tfm = FUNC1("crc32c", 0,
						     CRYPTO_ALG_ASYNC);
	tcp_sw_conn->rx_hash.flags = 0;
	if (FUNC0(tcp_sw_conn->rx_hash.tfm))
		goto free_tx_tfm;
	tcp_conn->rx_hash = &tcp_sw_conn->rx_hash;

	return cls_conn;

free_tx_tfm:
	FUNC2(tcp_sw_conn->tx_hash.tfm);
free_conn:
	FUNC3(KERN_ERR, conn,
			  "Could not create connection due to crc32c "
			  "loading error. Make sure the crc32c "
			  "module is built as a module or into the "
			  "kernel\n");
	FUNC5(cls_conn);
	return NULL;
}