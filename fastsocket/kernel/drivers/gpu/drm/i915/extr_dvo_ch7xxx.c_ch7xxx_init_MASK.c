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
typedef  scalar_t__ uint8_t ;
struct intel_dvo_device {scalar_t__ slave_addr; struct ch7xxx_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {scalar_t__ name; } ;
struct ch7xxx_priv {int quiet; } ;

/* Variables and functions */
 scalar_t__ CH7xxx_DID ; 
 int /*<<< orphan*/  CH7xxx_REG_DID ; 
 int /*<<< orphan*/  CH7xxx_REG_VID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dvo_device*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ch7xxx_priv*) ; 
 struct ch7xxx_priv* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct intel_dvo_device *dvo,
			struct i2c_adapter *adapter)
{
	/* this will detect the CH7xxx chip on the specified i2c bus */
	struct ch7xxx_priv *ch7xxx;
	uint8_t vendor, device;
	char *name;

	ch7xxx = FUNC4(sizeof(struct ch7xxx_priv), GFP_KERNEL);
	if (ch7xxx == NULL)
		return false;

	dvo->i2c_bus = adapter;
	dvo->dev_priv = ch7xxx;
	ch7xxx->quiet = true;

	if (!FUNC2(dvo, CH7xxx_REG_VID, &vendor))
		goto out;

	name = FUNC1(vendor);
	if (!name) {
		FUNC0("ch7xxx not detected; got 0x%02x from %s "
				"slave %d.\n",
			  vendor, adapter->name, dvo->slave_addr);
		goto out;
	}


	if (!FUNC2(dvo, CH7xxx_REG_DID, &device))
		goto out;

	if (device != CH7xxx_DID) {
		FUNC0("ch7xxx not detected; got 0x%02x from %s "
				"slave %d.\n",
			  vendor, adapter->name, dvo->slave_addr);
		goto out;
	}

	ch7xxx->quiet = false;
	FUNC0("Detected %s chipset, vendor/device ID 0x%02x/0x%02x\n",
		  name, vendor, device);
	return true;
out:
	FUNC3(ch7xxx);
	return false;
}