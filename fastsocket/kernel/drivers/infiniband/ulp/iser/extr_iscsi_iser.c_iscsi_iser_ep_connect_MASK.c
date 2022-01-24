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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iser_conn {struct iscsi_endpoint* ep; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iscsi_endpoint* FUNC0 (int) ; 
 struct iscsi_endpoint* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*) ; 
 int FUNC3 (struct iser_conn*,int /*<<< orphan*/ *,struct sockaddr_in*,int) ; 

__attribute__((used)) static struct iscsi_endpoint *
FUNC4(struct Scsi_Host *shost, struct sockaddr *dst_addr,
		      int non_blocking)
{
	int err;
	struct iser_conn *ib_conn;
	struct iscsi_endpoint *ep;

	ep = FUNC1(sizeof(*ib_conn));
	if (!ep)
		return FUNC0(-ENOMEM);

	ib_conn = ep->dd_data;
	ib_conn->ep = ep;
	FUNC2(ib_conn);

	err = FUNC3(ib_conn, NULL, (struct sockaddr_in *)dst_addr,
			   non_blocking);
	if (err)
		return FUNC0(err);

	return ep;
}