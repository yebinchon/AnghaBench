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
typedef  int u16 ;
struct xc5000_priv {int dummy; } ;

/* Variables and functions */
 int XC_RESULT_I2C_WRITE_FAILURE ; 
 int XC_RESULT_SUCCESS ; 
 int /*<<< orphan*/  XREG_BUSY ; 
 int FUNC0 (struct xc5000_priv*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct xc5000_priv*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct xc5000_priv *priv, u16 regAddr, u16 i2cData)
{
	u8 buf[4];
	int WatchDogTimer = 100;
	int result;

	buf[0] = (regAddr >> 8) & 0xFF;
	buf[1] = regAddr & 0xFF;
	buf[2] = (i2cData >> 8) & 0xFF;
	buf[3] = i2cData & 0xFF;
	result = FUNC1(priv, buf, 4);
	if (result == XC_RESULT_SUCCESS) {
		/* wait for busy flag to clear */
		while ((WatchDogTimer > 0) && (result == XC_RESULT_SUCCESS)) {
			result = FUNC0(priv, XREG_BUSY, (u16 *)buf);
			if (result == XC_RESULT_SUCCESS) {
				if ((buf[0] == 0) && (buf[1] == 0)) {
					/* busy flag cleared */
					break;
				} else {
					FUNC2(5); /* wait 5 ms */
					WatchDogTimer--;
				}
			}
		}
	}
	if (WatchDogTimer < 0)
		result = XC_RESULT_I2C_WRITE_FAILURE;

	return result;
}