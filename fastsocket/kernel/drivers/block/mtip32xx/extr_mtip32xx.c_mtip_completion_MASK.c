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
struct mtip_port {TYPE_2__* dd; struct mtip_cmd* commands; } ;
struct mtip_cmd {int /*<<< orphan*/ * comp_func; int /*<<< orphan*/ * async_callback; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PORT_IRQ_TF_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct mtip_port *port,
			    int tag,
			    void *data,
			    int status)
{
	struct mtip_cmd *command = &port->commands[tag];
	struct completion *waiting = data;
	if (FUNC2(status == PORT_IRQ_TF_ERR))
		FUNC1(&port->dd->pdev->dev,
			"Internal command %d completed with TFE\n", tag);

	command->async_callback = NULL;
	command->comp_func = NULL;

	FUNC0(waiting);
}