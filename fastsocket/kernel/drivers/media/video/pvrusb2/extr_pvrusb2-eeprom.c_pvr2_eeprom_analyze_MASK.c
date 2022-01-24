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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tvdata ;
struct tveeprom {int /*<<< orphan*/  tuner_formats; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  tuner_type; int /*<<< orphan*/  rev_str; int /*<<< orphan*/  revision; int /*<<< orphan*/  model; int /*<<< orphan*/  audio_processor; int /*<<< orphan*/  has_radio; } ;
struct pvr2_hdw {int tuner_updated; int /*<<< orphan*/  std_mask_eeprom; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  tuner_type; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  eeprom_addr; } ;
struct i2c_client {int /*<<< orphan*/ * adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tveeprom*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct tveeprom*,int /*<<< orphan*/ *) ; 

int FUNC5(struct pvr2_hdw *hdw)
{
	u8 *eeprom;
	struct tveeprom tvdata;

	FUNC1(&tvdata,0,sizeof(tvdata));

	eeprom = FUNC2(hdw);
	if (!eeprom) return -EINVAL;

	{
		struct i2c_client fake_client;
		/* Newer version expects a useless client interface */
		fake_client.addr = hdw->eeprom_addr;
		fake_client.adapter = &hdw->i2c_adap;
		FUNC4(&fake_client,&tvdata,eeprom);
	}

	FUNC3("eeprom assumed v4l tveeprom module");
	FUNC3("eeprom direct call results:");
	FUNC3("has_radio=%d",tvdata.has_radio);
	FUNC3("tuner_type=%d",tvdata.tuner_type);
	FUNC3("tuner_formats=0x%x",tvdata.tuner_formats);
	FUNC3("audio_processor=%d",tvdata.audio_processor);
	FUNC3("model=%d",tvdata.model);
	FUNC3("revision=%d",tvdata.revision);
	FUNC3("serial_number=%d",tvdata.serial_number);
	FUNC3("rev_str=%s",tvdata.rev_str);
	hdw->tuner_type = tvdata.tuner_type;
	hdw->tuner_updated = !0;
	hdw->serial_number = tvdata.serial_number;
	hdw->std_mask_eeprom = tvdata.tuner_formats;

	FUNC0(eeprom);

	return 0;
}