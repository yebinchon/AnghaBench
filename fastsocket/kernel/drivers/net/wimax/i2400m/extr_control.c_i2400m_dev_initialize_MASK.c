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
struct i2400m_tlv_hdr {void* length; void* type; } ;
struct i2400m_tlv_config_idle_timeout {struct i2400m_tlv_hdr hdr; scalar_t__ timeout; } ;
struct i2400m_tlv_config_idle_parameters {struct i2400m_tlv_hdr hdr; scalar_t__ idle_paging_interval; scalar_t__ idle_timeout; } ;
struct i2400m_tlv_config_dl_host_reorder {int reorder; struct i2400m_tlv_hdr hdr; } ;
struct i2400m_tlv_config_d2h_data_format {int format; struct i2400m_tlv_hdr hdr; } ;
struct i2400m {scalar_t__ rx_reorder; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  idle_timeout ;
typedef  int /*<<< orphan*/  idle_params ;
typedef  int /*<<< orphan*/  dlhr ;
typedef  int /*<<< orphan*/  df ;

/* Variables and functions */
 int I2400M_TLV_CONFIG_D2H_DATA_FORMAT ; 
 int I2400M_TLV_CONFIG_DL_HOST_REORDER ; 
 int I2400M_TLV_CONFIG_IDLE_PARAMETERS ; 
 int I2400M_TLV_CONFIG_IDLE_TIMEOUT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct i2400m*) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 scalar_t__ FUNC6 (struct i2400m*) ; 
 scalar_t__ i2400m_idle_mode_disabled ; 
 scalar_t__ FUNC7 (struct i2400m*) ; 
 int FUNC8 (struct i2400m*,struct i2400m_tlv_hdr const**,unsigned int) ; 

int FUNC9(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC5(i2400m);
	struct i2400m_tlv_config_idle_parameters idle_params;
	struct i2400m_tlv_config_idle_timeout idle_timeout;
	struct i2400m_tlv_config_d2h_data_format df;
	struct i2400m_tlv_config_dl_host_reorder dlhr;
	const struct i2400m_tlv_hdr *args[9];
	unsigned argc = 0;

	FUNC2(3, dev, "(i2400m %p)\n", i2400m);
	/* Disable idle mode? (enabled by default) */
	if (i2400m_idle_mode_disabled) {
		if (FUNC7(i2400m)) {
			idle_params.hdr.type =
				FUNC0(I2400M_TLV_CONFIG_IDLE_PARAMETERS);
			idle_params.hdr.length = FUNC0(
				sizeof(idle_params) - sizeof(idle_params.hdr));
			idle_params.idle_timeout = 0;
			idle_params.idle_paging_interval = 0;
			args[argc++] = &idle_params.hdr;
		} else {
			idle_timeout.hdr.type =
				FUNC0(I2400M_TLV_CONFIG_IDLE_TIMEOUT);
			idle_timeout.hdr.length = FUNC0(
				sizeof(idle_timeout) - sizeof(idle_timeout.hdr));
			idle_timeout.timeout = 0;
			args[argc++] = &idle_timeout.hdr;
		}
	}
	if (FUNC6(i2400m)) {
		/* Enable extended RX data format? */
		df.hdr.type =
			FUNC0(I2400M_TLV_CONFIG_D2H_DATA_FORMAT);
		df.hdr.length = FUNC0(
			sizeof(df) - sizeof(df.hdr));
		df.format = 1;
		args[argc++] = &df.hdr;

		/* Enable RX data reordering?
		 * (switch flipped in rx.c:i2400m_rx_setup() after fw upload) */
		if (i2400m->rx_reorder) {
			dlhr.hdr.type =
				FUNC0(I2400M_TLV_CONFIG_DL_HOST_REORDER);
			dlhr.hdr.length = FUNC0(
				sizeof(dlhr) - sizeof(dlhr.hdr));
			dlhr.reorder = 1;
			args[argc++] = &dlhr.hdr;
		}
	}
	result = FUNC8(i2400m, args, argc);
	if (result < 0)
		goto error;
	/*
	 * Update state: Here it just calls a get state; parsing the
	 * result (System State TLV and RF Status TLV [done in the rx
	 * path hooks]) will set the hardware and software RF-Kill
	 * status.
	 */
	result = FUNC4(i2400m);
error:
	if (result < 0)
		FUNC3(dev, "failed to initialize the device: %d\n", result);
	FUNC1(3, dev, "(i2400m %p) = %d\n", i2400m, result);
	return result;
}