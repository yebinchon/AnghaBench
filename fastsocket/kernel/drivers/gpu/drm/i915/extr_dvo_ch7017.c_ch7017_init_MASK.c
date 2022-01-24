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
typedef  int u8 ;
struct intel_dvo_device {int /*<<< orphan*/  slave_addr; struct ch7017_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;
struct ch7017_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH7017_DEVICE_ID ; 
#define  CH7017_DEVICE_ID_VALUE 130 
#define  CH7018_DEVICE_ID_VALUE 129 
#define  CH7019_DEVICE_ID_VALUE 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dvo_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ch7017_priv*) ; 
 struct ch7017_priv* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct intel_dvo_device *dvo,
			struct i2c_adapter *adapter)
{
	struct ch7017_priv *priv;
	const char *str;
	u8 val;

	priv = FUNC3(sizeof(struct ch7017_priv), GFP_KERNEL);
	if (priv == NULL)
		return false;

	dvo->i2c_bus = adapter;
	dvo->dev_priv = priv;

	if (!FUNC1(dvo, CH7017_DEVICE_ID, &val))
		goto fail;

	switch (val) {
	case CH7017_DEVICE_ID_VALUE:
		str = "ch7017";
		break;
	case CH7018_DEVICE_ID_VALUE:
		str = "ch7018";
		break;
	case CH7019_DEVICE_ID_VALUE:
		str = "ch7019";
		break;
	default:
		FUNC0("ch701x not detected, got %d: from %s "
			      "slave %d.\n",
			      val, adapter->name, dvo->slave_addr);
		goto fail;
	}

	FUNC0("%s detected on %s, addr %d\n",
		      str, adapter->name, dvo->slave_addr);
	return true;

fail:
	FUNC2(priv);
	return false;
}