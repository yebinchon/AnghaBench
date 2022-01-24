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
struct pnp_dev {int /*<<< orphan*/ * card; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  isapnp_id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,char,char) ; 
 int n_ni_boards ; 
 TYPE_1__* ni_boards ; 
 scalar_t__ FUNC2 (struct pnp_dev*) ; 
 scalar_t__ FUNC3 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(struct pnp_dev **dev)
{
	struct pnp_dev *isapnp_dev = NULL;
	int i;

	for (i = 0; i < n_ni_boards; i++) {
		isapnp_dev = FUNC5(NULL,
					  FUNC1('N', 'I', 'C'),
					  FUNC0(ni_boards[i].
							  isapnp_id), NULL);

		if (isapnp_dev == NULL || isapnp_dev->card == NULL)
			continue;

		if (FUNC3(isapnp_dev) < 0) {
			FUNC8
			    ("ni_atmio: %s found but already active, skipping.\n",
			     ni_boards[i].name);
			continue;
		}
		if (FUNC2(isapnp_dev) < 0) {
			FUNC4(isapnp_dev);
			return -EAGAIN;
		}
		if (!FUNC7(isapnp_dev, 0)
		    || !FUNC6(isapnp_dev, 0)) {
			FUNC4(isapnp_dev);
			FUNC8("ni_atmio: pnp invalid port or irq, aborting\n");
			return -ENOMEM;
		}
		break;
	}
	if (i == n_ni_boards)
		return -ENODEV;
	*dev = isapnp_dev;
	return 0;
}