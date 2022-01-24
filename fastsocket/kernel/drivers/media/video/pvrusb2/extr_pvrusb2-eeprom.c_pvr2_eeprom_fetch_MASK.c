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
typedef  unsigned int u16 ;
struct pvr2_hdw {int eeprom_addr; int /*<<< orphan*/  i2c_adap; } ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 unsigned int EEPROM_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ I2C_M_RD ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int FUNC1 (int /*<<< orphan*/ *,struct i2c_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,...) ; 

__attribute__((used)) static u8 *FUNC7(struct pvr2_hdw *hdw)
{
	struct i2c_msg msg[2];
	u8 *eeprom;
	u8 iadd[2];
	u8 addr;
	u16 eepromSize;
	unsigned int offs;
	int ret;
	int mode16 = 0;
	unsigned pcnt,tcnt;
	eeprom = FUNC3(EEPROM_SIZE,GFP_KERNEL);
	if (!eeprom) {
		FUNC5(PVR2_TRACE_ERROR_LEGS,
			   "Failed to allocate memory"
			   " required to read eeprom");
		return NULL;
	}

	FUNC6("Value for eeprom addr from controller was 0x%x",
		     hdw->eeprom_addr);
	addr = hdw->eeprom_addr;
	/* Seems that if the high bit is set, then the *real* eeprom
	   address is shifted right now bit position (noticed this in
	   newer PVR USB2 hardware) */
	if (addr & 0x80) addr >>= 1;

	/* FX2 documentation states that a 16bit-addressed eeprom is
	   expected if the I2C address is an odd number (yeah, this is
	   strange but it's what they do) */
	mode16 = (addr & 1);
	eepromSize = (mode16 ? 4096 : 256);
	FUNC6("Examining %d byte eeprom at location 0x%x"
		     " using %d bit addressing",eepromSize,addr,
		     mode16 ? 16 : 8);

	msg[0].addr = addr;
	msg[0].flags = 0;
	msg[0].len = mode16 ? 2 : 1;
	msg[0].buf = iadd;
	msg[1].addr = addr;
	msg[1].flags = I2C_M_RD;

	/* We have to do the actual eeprom data fetch ourselves, because
	   (1) we're only fetching part of the eeprom, and (2) if we were
	   getting the whole thing our I2C driver can't grab it in one
	   pass - which is what tveeprom is otherwise going to attempt */
	FUNC4(eeprom,0,EEPROM_SIZE);
	for (tcnt = 0; tcnt < EEPROM_SIZE; tcnt += pcnt) {
		pcnt = 16;
		if (pcnt + tcnt > EEPROM_SIZE) pcnt = EEPROM_SIZE-tcnt;
		offs = tcnt + (eepromSize - EEPROM_SIZE);
		if (mode16) {
			iadd[0] = offs >> 8;
			iadd[1] = offs;
		} else {
			iadd[0] = offs;
		}
		msg[1].len = pcnt;
		msg[1].buf = eeprom+tcnt;
		if ((ret = FUNC1(&hdw->i2c_adap,
					msg,FUNC0(msg))) != 2) {
			FUNC5(PVR2_TRACE_ERROR_LEGS,
				   "eeprom fetch set offs err=%d",ret);
			FUNC2(eeprom);
			return NULL;
		}
	}
	return eeprom;
}