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
struct rdma_id_private {int /*<<< orphan*/  node; struct rdma_bind_list* bind_list; } ;
struct rdma_bind_list {int /*<<< orphan*/  port; int /*<<< orphan*/  ps; int /*<<< orphan*/  owners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_bind_list*) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rdma_id_private *id_priv)
{
	struct rdma_bind_list *bind_list = id_priv->bind_list;

	if (!bind_list)
		return;

	FUNC4(&lock);
	FUNC0(&id_priv->node);
	if (FUNC1(&bind_list->owners)) {
		FUNC2(bind_list->ps, bind_list->port);
		FUNC3(bind_list);
	}
	FUNC5(&lock);
}