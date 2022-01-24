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
struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; int /*<<< orphan*/  packet; struct elantech_data* private; } ;
struct elantech_data {int debug; int hw_version; int /*<<< orphan*/  paritycheck; } ;
typedef  int /*<<< orphan*/  psmouse_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_BAD_DATA ; 
 int /*<<< orphan*/  PSMOUSE_FULL_PACKET ; 
 int /*<<< orphan*/  PSMOUSE_GOOD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 

__attribute__((used)) static psmouse_ret_t FUNC4(struct psmouse *psmouse)
{
	struct elantech_data *etd = psmouse->private;

	if (psmouse->pktcnt < psmouse->pktsize)
		return PSMOUSE_GOOD_DATA;

	if (etd->debug > 1)
		FUNC1(psmouse->packet, psmouse->pktsize);

	switch (etd->hw_version) {
	case 1:
		if (etd->paritycheck && !FUNC0(psmouse))
			return PSMOUSE_BAD_DATA;

		FUNC2(psmouse);
		break;

	case 2:
		/* We don't know how to check parity in protocol v2 */
		FUNC3(psmouse);
		break;
	}

	return PSMOUSE_FULL_PACKET;
}