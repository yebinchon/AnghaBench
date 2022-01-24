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
struct sockaddr_in6 {void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {void* sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct scsi_qla_host {int /*<<< orphan*/  host; } ;
struct iscsi_endpoint {int dummy; } ;
struct dev_db_entry {int options; int /*<<< orphan*/  port; int /*<<< orphan*/  ip_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int DDB_OPT_IPV6_DEVICE ; 
 int /*<<< orphan*/  IP_ADDR_LEN ; 
 int /*<<< orphan*/  IPv6_ADDR_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iscsi_endpoint* FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*) ; 
 struct sockaddr_storage* FUNC5 (int) ; 

__attribute__((used)) static struct iscsi_endpoint *FUNC6(struct scsi_qla_host *ha,
					struct dev_db_entry *fw_ddb_entry)
{
	struct iscsi_endpoint *ep;
	struct sockaddr_in *addr;
	struct sockaddr_in6 *addr6;
	struct sockaddr *t_addr;
	struct sockaddr_storage *dst_addr;
	char *ip;

	/* TODO: need to destroy on unload iscsi_endpoint*/
	dst_addr = FUNC5(sizeof(*dst_addr));
	if (!dst_addr)
		return NULL;

	if (fw_ddb_entry->options & DDB_OPT_IPV6_DEVICE) {
		t_addr = (struct sockaddr *)dst_addr;
		t_addr->sa_family = AF_INET6;
		addr6 = (struct sockaddr_in6 *)dst_addr;
		ip = (char *)&addr6->sin6_addr;
		FUNC2(ip, fw_ddb_entry->ip_addr, IPv6_ADDR_LEN);
		addr6->sin6_port = FUNC0(FUNC1(fw_ddb_entry->port));

	} else {
		t_addr = (struct sockaddr *)dst_addr;
		t_addr->sa_family = AF_INET;
		addr = (struct sockaddr_in *)dst_addr;
		ip = (char *)&addr->sin_addr;
		FUNC2(ip, fw_ddb_entry->ip_addr, IP_ADDR_LEN);
		addr->sin_port = FUNC0(FUNC1(fw_ddb_entry->port));
	}

	ep = FUNC3(ha->host, (struct sockaddr *)dst_addr, 0);
	FUNC4(dst_addr);
	return ep;
}