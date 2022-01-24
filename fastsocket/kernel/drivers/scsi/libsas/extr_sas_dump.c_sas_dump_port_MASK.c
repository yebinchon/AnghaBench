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
struct asd_sas_port {int /*<<< orphan*/  num_phys; int /*<<< orphan*/  id; int /*<<< orphan*/  oob_mode; int /*<<< orphan*/  tproto; int /*<<< orphan*/  iproto; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  sas_addr; int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct asd_sas_port *port)
{
	FUNC1("port%d: class:0x%x\n", port->id, port->class);
	FUNC1("port%d: sas_addr:%llx\n", port->id,
		    FUNC0(port->sas_addr));
	FUNC1("port%d: attached_sas_addr:%llx\n", port->id,
		    FUNC0(port->attached_sas_addr));
	FUNC1("port%d: iproto:0x%x\n", port->id, port->iproto);
	FUNC1("port%d: tproto:0x%x\n", port->id, port->tproto);
	FUNC1("port%d: oob_mode:0x%x\n", port->id, port->oob_mode);
	FUNC1("port%d: num_phys:%d\n", port->id, port->num_phys);
}