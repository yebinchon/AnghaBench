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
struct serio {struct amba_kmi_port* port_data; } ;
struct amba_kmi_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMICR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct amba_kmi_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct serio *io)
{
	struct amba_kmi_port *kmi = io->port_data;

	FUNC2(0, KMICR);

	FUNC1(kmi->irq, kmi);
	FUNC0(kmi->clk);
}