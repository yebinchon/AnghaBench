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
struct hgpk_data {int count; scalar_t__ y_tally; scalar_t__ x_tally; int /*<<< orphan*/  recalib_wq; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spew_delay ; 

__attribute__((used)) static void FUNC4(struct psmouse *psmouse,
			      int l, int r, int x, int y)
{
	struct hgpk_data *priv = psmouse->private;

	/* ignore button press packets; many in a row could trigger
	 * a false-positive! */
	if (l || r)
		return;

	priv->x_tally += x;
	priv->y_tally += y;

	if (++priv->count > 100) {
		if (FUNC0(priv->x_tally) < 3 && FUNC0(priv->y_tally) < 3) {
			FUNC1(psmouse, "packet spew detected (%d,%d)\n",
				 priv->x_tally, priv->y_tally);
			FUNC3(psmouse, &priv->recalib_wq,
					   FUNC2(spew_delay));
		}
		/* reset every 100 packets */
		priv->count = 0;
		priv->x_tally = 0;
		priv->y_tally = 0;
	}
}