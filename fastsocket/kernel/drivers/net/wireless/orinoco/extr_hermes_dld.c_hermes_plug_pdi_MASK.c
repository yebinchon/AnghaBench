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
struct pdr {int dummy; } ;
struct pdi {int /*<<< orphan*/  data; } ;
struct hermes {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* program ) (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 struct pdr* FUNC0 (struct pdr const*,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pdi const*) ; 
 scalar_t__ FUNC2 (struct pdi const*) ; 
 int /*<<< orphan*/  FUNC3 (struct pdr const*) ; 
 scalar_t__ FUNC4 (struct pdr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct hermes *hw, const struct pdr *first_pdr,
		const struct pdi *pdi, const void *pdr_end)
{
	const struct pdr *pdr;

	/* Find the PDR corresponding to this PDI */
	pdr = FUNC0(first_pdr, FUNC1(pdi), pdr_end);

	/* No match is found, safe to ignore */
	if (!pdr)
		return 0;

	/* Lengths of the data in PDI and PDR must match */
	if (FUNC2(pdi) != FUNC4(pdr))
		return -EINVAL;

	/* do the actual plugging */
	hw->ops->program(hw, pdi->data, FUNC3(pdr), FUNC2(pdi));

	return 0;
}