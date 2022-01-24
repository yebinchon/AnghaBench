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
struct TYPE_3__ {int /*<<< orphan*/  cpr; } ;
struct TYPE_4__ {TYPE_1__ ax88796; } ;
struct parport_state {TYPE_2__ u; } ;
struct pardevice {int /*<<< orphan*/  port; } ;
struct ax_drvdata {int /*<<< orphan*/  spp_cpr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pardevice*,struct parport_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport_state*,int /*<<< orphan*/ ,int) ; 
 struct ax_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct pardevice *d, struct parport_state *s)
{
	struct ax_drvdata *dd = FUNC2(d->port);

	FUNC1(s, 0, sizeof(struct parport_state));

	FUNC0(dd->dev, "init_state: %p: state=%p\n", d, s);
	s->u.ax88796.cpr = FUNC3(dd->spp_cpr);
}