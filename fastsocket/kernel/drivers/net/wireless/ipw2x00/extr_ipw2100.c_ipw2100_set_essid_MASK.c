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
struct ipw2100_priv {int config; int essid_len; scalar_t__ essid; } ;
struct host_command {int host_command_length; scalar_t__ host_command_parameters; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;

/* Variables and functions */
 int CFG_ASSOCIATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  SSID ; 
 int FUNC2 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC3 (struct ipw2100_priv*) ; 
 int FUNC4 (struct ipw2100_priv*,struct host_command*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ssid ; 

__attribute__((used)) static int FUNC9(struct ipw2100_priv *priv, char *essid,
			     int length, int batch_mode)
{
	int ssid_len = FUNC7(length, IW_ESSID_MAX_SIZE);
	struct host_command cmd = {
		.host_command = SSID,
		.host_command_sequence = 0,
		.host_command_length = ssid_len
	};
	int err;
	FUNC0(ssid);

	FUNC1("SSID: '%s'\n", FUNC8(ssid, essid, ssid_len));

	if (ssid_len)
		FUNC5(cmd.host_command_parameters, essid, ssid_len);

	if (!batch_mode) {
		err = FUNC2(priv);
		if (err)
			return err;
	}

	/* Bug in FW currently doesn't honor bit 0 in SET_SCAN_OPTIONS to
	 * disable auto association -- so we cheat by setting a bogus SSID */
	if (!ssid_len && !(priv->config & CFG_ASSOCIATE)) {
		int i;
		u8 *bogus = (u8 *) cmd.host_command_parameters;
		for (i = 0; i < IW_ESSID_MAX_SIZE; i++)
			bogus[i] = 0x18 + i;
		cmd.host_command_length = IW_ESSID_MAX_SIZE;
	}

	/* NOTE:  We always send the SSID command even if the provided ESSID is
	 * the same as what we currently think is set. */

	err = FUNC4(priv, &cmd);
	if (!err) {
		FUNC6(priv->essid + ssid_len, 0, IW_ESSID_MAX_SIZE - ssid_len);
		FUNC5(priv->essid, essid, ssid_len);
		priv->essid_len = ssid_len;
	}

	if (!batch_mode) {
		if (FUNC3(priv))
			err = -EIO;
	}

	return err;
}