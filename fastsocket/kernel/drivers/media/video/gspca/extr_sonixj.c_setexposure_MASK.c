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
typedef  int u32 ;
struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_FRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  SENSOR_GC0307 134 
#define  SENSOR_HV7131R 133 
#define  SENSOR_MI0360 132 
#define  SENSOR_MI0360B 131 
#define  SENSOR_MO4000 130 
#define  SENSOR_MT9V111 129 
#define  SENSOR_OM6802 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static u32 FUNC4(struct gspca_dev *gspca_dev,
			u32 expo)
{
	struct sd *sd = (struct sd *) gspca_dev;

	switch (sd->sensor) {
	case SENSOR_GC0307: {
		int a, b;

		/* expo = 0..255 -> a = 19..43 */
		a = 19 + expo * 25 / 256;
		FUNC1(gspca_dev, 0x68, a);
		a -= 12;
		b = a * a * 4;			/* heuristic */
		FUNC1(gspca_dev, 0x03, b >> 8);
		FUNC1(gspca_dev, 0x04, b);
		break;
	    }
	case SENSOR_HV7131R: {
		u8 Expodoit[] =
			{ 0xc1, 0x11, 0x25, 0x00, 0x00, 0x00, 0x00, 0x16 };

		Expodoit[3] = expo >> 16;
		Expodoit[4] = expo >> 8;
		Expodoit[5] = expo;
		FUNC2(gspca_dev, Expodoit);
		break;
	    }
	case SENSOR_MI0360:
	case SENSOR_MI0360B: {
		u8 expoMi[] =		/* exposure 0x0635 -> 4 fp/s 0x10 */
			{ 0xb1, 0x5d, 0x09, 0x00, 0x00, 0x00, 0x00, 0x16 };
		static const u8 doit[] =		/* update sensor */
			{ 0xb1, 0x5d, 0x07, 0x00, 0x03, 0x00, 0x00, 0x10 };
		static const u8 sensorgo[] =		/* sensor on */
			{ 0xb1, 0x5d, 0x07, 0x00, 0x02, 0x00, 0x00, 0x10 };

		if (expo > 0x0635)
			expo = 0x0635;
		else if (expo < 0x0001)
			expo = 0x0001;
		expoMi[3] = expo >> 8;
		expoMi[4] = expo;
		FUNC2(gspca_dev, expoMi);
		FUNC2(gspca_dev, doit);
		FUNC2(gspca_dev, sensorgo);
		break;
	    }
	case SENSOR_MO4000: {
		u8 expoMof[] =
			{ 0xa1, 0x21, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x10 };
		u8 expoMo10[] =
			{ 0xa1, 0x21, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10 };
		static const u8 gainMo[] =
			{ 0xa1, 0x21, 0x00, 0x10, 0x00, 0x00, 0x00, 0x1d };

		if (expo > 0x1fff)
			expo = 0x1fff;
		else if (expo < 0x0001)
			expo = 0x0001;
		expoMof[3] = (expo & 0x03fc) >> 2;
		FUNC2(gspca_dev, expoMof);
		expoMo10[3] = ((expo & 0x1c00) >> 10)
				| ((expo & 0x0003) << 4);
		FUNC2(gspca_dev, expoMo10);
		FUNC2(gspca_dev, gainMo);
		FUNC0(D_FRAM, "set exposure %d",
			((expoMo10[3] & 0x07) << 10)
			| (expoMof[3] << 2)
			| ((expoMo10[3] & 0x30) >> 4));
		break;
	    }
	case SENSOR_MT9V111: {
		u8 expo_c1[] =
			{ 0xb1, 0x5c, 0x09, 0x00, 0x00, 0x00, 0x00, 0x10 };

		if (expo > 0x0280)
			expo = 0x0280;
		else if (expo < 0x0040)
			expo = 0x0040;
		expo_c1[3] = expo >> 8;
		expo_c1[4] = expo;
		FUNC2(gspca_dev, expo_c1);
		break;
	    }
	case SENSOR_OM6802: {
		u8 gainOm[] =
			{ 0xa0, 0x34, 0xe5, 0x00, 0x00, 0x00, 0x00, 0x10 };
				/* preset AGC - works when AutoExpo = off */

		if (expo > 0x03ff)
			expo = 0x03ff;
		 if (expo < 0x0001)
			expo = 0x0001;
		gainOm[3] = expo >> 2;
		FUNC2(gspca_dev, gainOm);
		FUNC3(gspca_dev, 0x96, expo >> 5);
		FUNC0(D_FRAM, "set exposure %d", gainOm[3]);
		break;
	    }
	}
	return expo;
}