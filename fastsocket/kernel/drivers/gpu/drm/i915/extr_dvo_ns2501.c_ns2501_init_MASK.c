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
struct ns2501_priv {int quiet; int reg_8_shadow; scalar_t__ reg_8_set; } ;
struct intel_dvo_device {int /*<<< orphan*/  slave_addr; struct ns2501_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NS2501_8_BPAS ; 
 int NS2501_8_HEN ; 
 int NS2501_8_PD ; 
 int NS2501_8_VEN ; 
 int NS2501_DID ; 
 int /*<<< orphan*/  NS2501_DID_LO ; 
 int NS2501_VID ; 
 int /*<<< orphan*/  NS2501_VID_LO ; 
 int /*<<< orphan*/  FUNC1 (struct ns2501_priv*) ; 
 struct ns2501_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dvo_device*,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static bool FUNC4(struct intel_dvo_device *dvo,
			struct i2c_adapter *adapter)
{
	/* this will detect the NS2501 chip on the specified i2c bus */
	struct ns2501_priv *ns;
	unsigned char ch;

	ns = FUNC2(sizeof(struct ns2501_priv), GFP_KERNEL);
	if (ns == NULL)
		return false;

	dvo->i2c_bus = adapter;
	dvo->dev_priv = ns;
	ns->quiet = true;

	if (!FUNC3(dvo, NS2501_VID_LO, &ch))
		goto out;

	if (ch != (NS2501_VID & 0xff)) {
		FUNC0("ns2501 not detected got %d: from %s Slave %d.\n",
			      ch, adapter->name, dvo->slave_addr);
		goto out;
	}

	if (!FUNC3(dvo, NS2501_DID_LO, &ch))
		goto out;

	if (ch != (NS2501_DID & 0xff)) {
		FUNC0("ns2501 not detected got %d: from %s Slave %d.\n",
			      ch, adapter->name, dvo->slave_addr);
		goto out;
	}
	ns->quiet = false;
	ns->reg_8_set = 0;
	ns->reg_8_shadow =
	    NS2501_8_PD | NS2501_8_BPAS | NS2501_8_VEN | NS2501_8_HEN;

	FUNC0("init ns2501 dvo controller successfully!\n");
	return true;

out:
	FUNC1(ns);
	return false;
}