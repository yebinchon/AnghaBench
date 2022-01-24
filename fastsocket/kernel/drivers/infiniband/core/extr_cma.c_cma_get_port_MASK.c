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
struct idr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_IB ; 
 int EPROTONOSUPPORT ; 
 int FUNC0 (struct idr*,struct rdma_id_private*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rdma_id_private*) ; 
 struct idr* FUNC3 (struct rdma_id_private*) ; 
 struct idr* FUNC4 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_id_private*) ; 
 int FUNC6 (struct idr*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct rdma_id_private *id_priv)
{
	struct idr *ps;
	int ret;

	if (FUNC2(id_priv) != AF_IB)
		ps = FUNC4(id_priv);
	else
		ps = FUNC3(id_priv);
	if (!ps)
		return -EPROTONOSUPPORT;

	FUNC7(&lock);
	if (FUNC1(FUNC5(id_priv)))
		ret = FUNC0(ps, id_priv);
	else
		ret = FUNC6(ps, id_priv);
	FUNC8(&lock);

	return ret;
}