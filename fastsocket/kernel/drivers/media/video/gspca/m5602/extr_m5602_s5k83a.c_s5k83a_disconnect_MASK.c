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
struct sd {int /*<<< orphan*/ * sensor; struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {struct s5k83a_priv* settings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s5k83a_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*) ; 

void FUNC2(struct sd *sd)
{
	struct s5k83a_priv *sens_priv = sd->sensor_priv;

	FUNC1(sd);

	sd->sensor = NULL;
	FUNC0(sens_priv->settings);
	FUNC0(sens_priv);
}