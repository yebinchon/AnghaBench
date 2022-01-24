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
struct nvbios_extdev_func {int addr; } ;
struct nouveau_therm_priv {scalar_t__ ic; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_i2c {int /*<<< orphan*/  (* identify ) (struct nouveau_i2c*,int /*<<< orphan*/ ,char*,struct i2c_board_info*,int /*<<< orphan*/ ) ;} ;
struct nouveau_bios {int dummy; } ;
struct i2c_board_info {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  NVBIOS_EXTDEV_ADT7473 ; 
 int /*<<< orphan*/  NVBIOS_EXTDEV_LM89 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_bios* FUNC2 (struct nouveau_therm*) ; 
 struct nouveau_i2c* FUNC3 (struct nouveau_therm*) ; 
 struct i2c_board_info* nv_board_infos ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bios*,int /*<<< orphan*/ ,struct nvbios_extdev_func*) ; 
 int /*<<< orphan*/  probe_monitoring_device ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_i2c*,int /*<<< orphan*/ ,char*,struct i2c_board_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_i2c*,int /*<<< orphan*/ ,char*,struct i2c_board_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_i2c*,int /*<<< orphan*/ ,char*,struct i2c_board_info*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct nouveau_therm *therm)
{
	struct nouveau_therm_priv *priv = (void *)therm;
	struct nouveau_bios *bios = FUNC2(therm);
	struct nouveau_i2c *i2c = FUNC3(therm);
	struct nvbios_extdev_func extdev_entry;

	if (!FUNC4(bios, NVBIOS_EXTDEV_LM89, &extdev_entry)) {
		struct i2c_board_info board[] = {
			{ FUNC0("lm90", extdev_entry.addr >> 1) },
			{ }
		};

		i2c->identify(i2c, FUNC1(0), "monitoring device",
				  board, probe_monitoring_device);
		if (priv->ic)
			return;
	}

	if (!FUNC4(bios, NVBIOS_EXTDEV_ADT7473, &extdev_entry)) {
		struct i2c_board_info board[] = {
			{ FUNC0("adt7473", extdev_entry.addr >> 1) },
			{ }
		};

		i2c->identify(i2c, FUNC1(0), "monitoring device",
				  board, probe_monitoring_device);
		if (priv->ic)
			return;
	}

	/* The vbios doesn't provide the address of an exisiting monitoring
	   device. Let's try our static list.
	 */
	i2c->identify(i2c, FUNC1(0), "monitoring device",
		      nv_board_infos, probe_monitoring_device);
}