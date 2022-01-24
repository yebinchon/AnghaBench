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
struct pnp_option {unsigned int flags; unsigned long type; int /*<<< orphan*/  list; } ;
struct pnp_dev {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pnp_option* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct pnp_option *FUNC2(struct pnp_dev *dev, unsigned long type,
				    unsigned int option_flags)
{
	struct pnp_option *option;

	option = FUNC0(sizeof(struct pnp_option), GFP_KERNEL);
	if (!option)
		return NULL;

	option->flags = option_flags;
	option->type = type;

	FUNC1(&option->list, &dev->options);
	return option;
}