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
struct bfa_port_s {int /*<<< orphan*/  endis_cbarg; int /*<<< orphan*/  (* endis_cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  endis_pending; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_port_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bfa_port_s *port, bfa_status_t status)
{
	FUNC0(port, status);
	port->endis_pending = BFA_FALSE;
	port->endis_cbfn(port->endis_cbarg, status);
}