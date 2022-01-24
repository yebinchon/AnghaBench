#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipw2100_priv {int /*<<< orphan*/  msg_free_stat; int /*<<< orphan*/  msg_free_list; TYPE_1__* msg_buffers; int /*<<< orphan*/  msg_pend_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IPW_COMMAND_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ipw2100_priv *priv)
{
	int i;

	FUNC0(&priv->msg_free_list);
	FUNC0(&priv->msg_pend_list);

	for (i = 0; i < IPW_COMMAND_POOL_SIZE; i++)
		FUNC2(&priv->msg_buffers[i].list, &priv->msg_free_list);
	FUNC1(&priv->msg_free_stat, i);

	return 0;
}