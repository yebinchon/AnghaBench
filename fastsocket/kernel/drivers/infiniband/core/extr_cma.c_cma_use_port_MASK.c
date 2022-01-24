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
struct rdma_id_private {int /*<<< orphan*/  reuseaddr; } ;
struct rdma_bind_list {int dummy; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int EACCES ; 
 unsigned short PROT_SOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct idr*,struct rdma_id_private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_bind_list*,struct rdma_id_private*) ; 
 int FUNC3 (struct rdma_bind_list*,struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_id_private*) ; 
 struct rdma_bind_list* FUNC6 (struct idr*,unsigned short) ; 
 unsigned short FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct idr *ps, struct rdma_id_private *id_priv)
{
	struct rdma_bind_list *bind_list;
	unsigned short snum;
	int ret;

	snum = FUNC7(FUNC4(FUNC5(id_priv)));
	if (snum < PROT_SOCK && !FUNC0(CAP_NET_BIND_SERVICE))
		return -EACCES;

	bind_list = FUNC6(ps, snum);
	if (!bind_list) {
		ret = FUNC1(ps, id_priv, snum);
	} else {
		ret = FUNC3(bind_list, id_priv, id_priv->reuseaddr);
		if (!ret)
			FUNC2(bind_list, id_priv);
	}
	return ret;
}