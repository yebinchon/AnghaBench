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
struct iscsi_conn {struct beiscsi_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct beiscsi_offload_params {int dummy; } ;
struct beiscsi_endpoint {int dummy; } ;
struct beiscsi_conn {scalar_t__ login_in_progress; int /*<<< orphan*/  phba; struct beiscsi_endpoint* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_conn*,struct beiscsi_offload_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_conn*,struct beiscsi_offload_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_offload_params*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct iscsi_cls_conn *cls_conn)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct beiscsi_conn *beiscsi_conn = conn->dd_data;
	struct beiscsi_endpoint *beiscsi_ep;
	struct beiscsi_offload_params params;

	FUNC0(beiscsi_conn->phba, KERN_INFO,
		    BEISCSI_LOG_CONFIG,
		    "BS_%d : In beiscsi_conn_start\n");

	FUNC4(&params, 0, sizeof(struct beiscsi_offload_params));
	beiscsi_ep = beiscsi_conn->ep;
	if (!beiscsi_ep)
		FUNC0(beiscsi_conn->phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG,
			    "BS_%d : In beiscsi_conn_start , no beiscsi_ep\n");

	beiscsi_conn->login_in_progress = 0;
	FUNC2(beiscsi_conn, &params);
	FUNC1(beiscsi_conn, &params);
	FUNC3(cls_conn);
	return 0;
}