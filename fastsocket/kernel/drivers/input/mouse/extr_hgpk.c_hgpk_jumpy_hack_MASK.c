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
struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int /*<<< orphan*/  recalib_wq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  jumpy_delay ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ recalib_delta ; 

__attribute__((used)) static void FUNC4(struct psmouse *psmouse, int x, int y)
{
	struct hgpk_data *priv = psmouse->private;

	if (FUNC0(x) > recalib_delta || FUNC0(y) > recalib_delta) {
		FUNC1(psmouse, ">%dpx jump detected (%d,%d)\n",
				recalib_delta, x, y);
		/* My car gets forty rods to the hogshead and that's the
		 * way I likes it! */
		FUNC3(psmouse, &priv->recalib_wq,
				FUNC2(jumpy_delay));
	}
}