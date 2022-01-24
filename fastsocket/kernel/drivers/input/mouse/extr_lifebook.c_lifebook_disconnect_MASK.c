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
struct psmouse {struct lifebook_data* private; } ;
struct lifebook_data {int /*<<< orphan*/  dev2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lifebook_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse)
{
	struct lifebook_data *priv = psmouse->private;

	FUNC2(psmouse);
	if (priv) {
		FUNC0(priv->dev2);
		FUNC1(priv);
	}
	psmouse->private = NULL;
}