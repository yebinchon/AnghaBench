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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_host {struct iscsi_session* session; } ;
struct iscsi_sw_tcp_conn {int /*<<< orphan*/  sock; } ;
struct iscsi_session {int /*<<< orphan*/  lock; struct iscsi_conn* leadconn; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;

/* Variables and functions */
 int ENOTCONN ; 
#define  ISCSI_HOST_PARAM_IPADDRESS 128 
 int FUNC0 (struct sockaddr_storage*,int,char*) ; 
 int FUNC1 (struct Scsi_Host*,int,char*) ; 
 struct iscsi_sw_tcp_host* FUNC2 (struct Scsi_Host*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct Scsi_Host *shost,
				       enum iscsi_host_param param, char *buf)
{
	struct iscsi_sw_tcp_host *tcp_sw_host = FUNC2(shost);
	struct iscsi_session *session = tcp_sw_host->session;
	struct iscsi_conn *conn;
	struct iscsi_tcp_conn *tcp_conn;
	struct iscsi_sw_tcp_conn *tcp_sw_conn;
	struct sockaddr_in6 addr;
	int rc, len;

	switch (param) {
	case ISCSI_HOST_PARAM_IPADDRESS:
		FUNC4(&session->lock);
		conn = session->leadconn;
		if (!conn) {
			FUNC5(&session->lock);
			return -ENOTCONN;
		}
		tcp_conn = conn->dd_data;

		tcp_sw_conn = tcp_conn->dd_data;
		if (!tcp_sw_conn->sock) {
			FUNC5(&session->lock);
			return -ENOTCONN;
		}

		rc = FUNC3(tcp_sw_conn->sock,
					(struct sockaddr *)&addr, &len);
		FUNC5(&session->lock);
		if (rc)
			return rc;

		return FUNC0((struct sockaddr_storage *)
						 &addr, param, buf);
	default:
		return FUNC1(shost, param, buf);
	}

	return 0;
}