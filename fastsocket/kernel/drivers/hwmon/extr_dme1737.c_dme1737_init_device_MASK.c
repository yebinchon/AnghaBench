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
struct i2c_client {int addr; } ;
struct dme1737_data {scalar_t__ type; int config; int config2; int has_fan; int has_pwm; int* pwm_config; int* pwm_acz; int /*<<< orphan*/  vrm; int /*<<< orphan*/  in_nominal; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DME1737_REG_CONFIG ; 
 int /*<<< orphan*/  DME1737_REG_CONFIG2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DME1737_REG_TACH_PWM ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct dme1737_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 scalar_t__ dme1737 ; 
 scalar_t__ FUNC9 (int,struct dme1737_data*) ; 
 void* FUNC10 (struct dme1737_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dme1737_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  force_start ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct dme1737_data *data = FUNC6(dev);
	struct i2c_client *client = data->client;
	int ix;
	u8 reg;

	/* Point to the right nominal voltages array */
	data->in_nominal = FUNC2(data->type);

	data->config = FUNC10(data, DME1737_REG_CONFIG);
	/* Inform if part is not monitoring/started */
	if (!(data->config & 0x01)) {
		if (!force_start) {
			FUNC5(dev, "Device is not monitoring. "
				"Use the force_start load parameter to "
				"override.\n");
			return -EFAULT;
		}

		/* Force monitoring */
		data->config |= 0x01;
		FUNC11(data, DME1737_REG_CONFIG, data->config);
	}
	/* Inform if part is not ready */
	if (!(data->config & 0x04)) {
		FUNC5(dev, "Device is not ready.\n");
		return -EFAULT;
	}

	/* Determine which optional fan and pwm features are enabled/present */
	if (client) {   /* I2C chip */
		data->config2 = FUNC10(data, DME1737_REG_CONFIG2);
		/* Check if optional fan3 input is enabled */
		if (data->config2 & 0x04) {
			data->has_fan |= (1 << 2);
		}

		/* Fan4 and pwm3 are only available if the client's I2C address
		 * is the default 0x2e. Otherwise the I/Os associated with
		 * these functions are used for addr enable/select. */
		if (client->addr == 0x2e) {
			data->has_fan |= (1 << 3);
			data->has_pwm |= (1 << 2);
		}

		/* Determine which of the optional fan[5-6] and pwm[5-6]
		 * features are enabled. For this, we need to query the runtime
		 * registers through the Super-IO LPC interface. Try both
		 * config ports 0x2e and 0x4e. */
		if (FUNC9(0x2e, data) &&
		    FUNC9(0x4e, data)) {
			FUNC8(dev, "Failed to query Super-IO for optional "
				 "features.\n");
		}
	} else {   /* ISA chip */
		/* Fan3 and pwm3 are always available. Fan[4-5] and pwm[5-6]
		 * don't exist in the ISA chip. */
		data->has_fan |= (1 << 2);
		data->has_pwm |= (1 << 2);
	}

	/* Fan1, fan2, pwm1, and pwm2 are always present */
	data->has_fan |= 0x03;
	data->has_pwm |= 0x03;

	FUNC7(dev, "Optional features: pwm3=%s, pwm5=%s, pwm6=%s, "
		 "fan3=%s, fan4=%s, fan5=%s, fan6=%s.\n",
		 (data->has_pwm & (1 << 2)) ? "yes" : "no",
		 (data->has_pwm & (1 << 4)) ? "yes" : "no",
		 (data->has_pwm & (1 << 5)) ? "yes" : "no",
		 (data->has_fan & (1 << 2)) ? "yes" : "no",
		 (data->has_fan & (1 << 3)) ? "yes" : "no",
		 (data->has_fan & (1 << 4)) ? "yes" : "no",
		 (data->has_fan & (1 << 5)) ? "yes" : "no");

	reg = FUNC10(data, DME1737_REG_TACH_PWM);
	/* Inform if fan-to-pwm mapping differs from the default */
	if (client && reg != 0xa4) {   /* I2C chip */
		FUNC8(dev, "Non-standard fan to pwm mapping: "
			 "fan1->pwm%d, fan2->pwm%d, fan3->pwm%d, "
			 "fan4->pwm%d. Please report to the driver "
			 "maintainer.\n",
			 (reg & 0x03) + 1, ((reg >> 2) & 0x03) + 1,
			 ((reg >> 4) & 0x03) + 1, ((reg >> 6) & 0x03) + 1);
	} else if (!client && reg != 0x24) {   /* ISA chip */
		FUNC8(dev, "Non-standard fan to pwm mapping: "
			 "fan1->pwm%d, fan2->pwm%d, fan3->pwm%d. "
			 "Please report to the driver maintainer.\n",
			 (reg & 0x03) + 1, ((reg >> 2) & 0x03) + 1,
			 ((reg >> 4) & 0x03) + 1);
	}

	/* Switch pwm[1-3] to manual mode if they are currently disabled and
	 * set the duty-cycles to 0% (which is identical to the PWMs being
	 * disabled). */
	if (!(data->config & 0x02)) {
		for (ix = 0; ix < 3; ix++) {
			data->pwm_config[ix] = FUNC10(data,
						FUNC1(ix));
			if ((data->has_pwm & (1 << ix)) &&
			    (FUNC3(data->pwm_config[ix]) == -1)) {
				FUNC7(dev, "Switching pwm%d to "
					 "manual mode.\n", ix + 1);
				data->pwm_config[ix] = FUNC4(1,
							data->pwm_config[ix]);
				FUNC11(data, FUNC0(ix), 0);
				FUNC11(data,
					      FUNC1(ix),
					      data->pwm_config[ix]);
			}
		}
	}

	/* Initialize the default PWM auto channels zone (acz) assignments */
	data->pwm_acz[0] = 1;	/* pwm1 -> zone1 */
	data->pwm_acz[1] = 2;	/* pwm2 -> zone2 */
	data->pwm_acz[2] = 4;	/* pwm3 -> zone3 */

	/* Set VRM */
	if (data->type == dme1737) {
		data->vrm = FUNC12();
	}

	return 0;
}