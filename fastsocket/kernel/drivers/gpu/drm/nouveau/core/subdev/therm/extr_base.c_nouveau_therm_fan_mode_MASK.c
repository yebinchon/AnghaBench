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
struct nouveau_therm_priv {int mode; } ;
struct nouveau_therm {scalar_t__ (* temp_get ) (struct nouveau_therm*) ;} ;
struct nouveau_device {scalar_t__ card_type; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int EINVAL ; 
 int NOUVEAU_THERM_CTRL_NONE ; 
 scalar_t__ NV_C0 ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_therm*,int) ; 
 struct nouveau_device* FUNC2 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_therm*,char*,char const*) ; 
 scalar_t__ FUNC4 (struct nouveau_therm*) ; 

int
FUNC5(struct nouveau_therm *therm, int mode)
{
	struct nouveau_therm_priv *priv = (void *)therm;
	struct nouveau_device *device = FUNC2(therm);
	static const char *name[] = {
		"disabled",
		"manual",
		"automatic"
	};

	/* The default PDAEMON ucode interferes with fan management */
	if ((mode >= FUNC0(name)) ||
	    (mode != NOUVEAU_THERM_CTRL_NONE && device->card_type >= NV_C0))
		return -EINVAL;

	/* do not allow automatic fan management if the thermal sensor is
	 * not available */
	if (priv->mode == 2 && therm->temp_get(therm) < 0)
		return -EINVAL;

	if (priv->mode == mode)
		return 0;

	FUNC3(therm, "fan management: %s\n", name[mode]);
	FUNC1(therm, mode);
	return 0;
}