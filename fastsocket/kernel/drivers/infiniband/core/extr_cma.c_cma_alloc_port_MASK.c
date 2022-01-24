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
struct rdma_id_private {int dummy; } ;
struct rdma_bind_list {unsigned short port; struct idr* ps; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_bind_list*,struct rdma_id_private*) ; 
 int FUNC1 (struct idr*,struct rdma_bind_list*,unsigned short,int*) ; 
 scalar_t__ FUNC2 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_bind_list*) ; 
 struct rdma_bind_list* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct idr *ps, struct rdma_id_private *id_priv,
			  unsigned short snum)
{
	struct rdma_bind_list *bind_list;
	int port, ret;

	bind_list = FUNC5(sizeof *bind_list, GFP_KERNEL);
	if (!bind_list)
		return -ENOMEM;

	do {
		ret = FUNC1(ps, bind_list, snum, &port);
	} while ((ret == -EAGAIN) && FUNC2(ps, GFP_KERNEL));

	if (ret)
		goto err1;

	if (port != snum) {
		ret = -EADDRNOTAVAIL;
		goto err2;
	}

	bind_list->ps = ps;
	bind_list->port = (unsigned short) port;
	FUNC0(bind_list, id_priv);
	return 0;
err2:
	FUNC3(ps, port);
err1:
	FUNC4(bind_list);
	return ret;
}