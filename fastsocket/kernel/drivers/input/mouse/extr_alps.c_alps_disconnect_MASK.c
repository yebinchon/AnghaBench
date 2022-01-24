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
struct psmouse {struct alps_data* private; } ;
struct alps_data {int /*<<< orphan*/  dev2; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alps_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 

__attribute__((used)) static void FUNC4(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;

	FUNC3(psmouse);
	FUNC0(&priv->timer);
	FUNC1(priv->dev2);
	FUNC2(priv);
}