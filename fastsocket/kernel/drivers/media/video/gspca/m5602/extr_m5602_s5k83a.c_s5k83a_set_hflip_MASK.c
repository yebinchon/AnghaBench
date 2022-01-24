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
typedef  scalar_t__ u8 ;
struct sd {struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {int* settings; } ;
struct gspca_dev {int dummy; } ;
typedef  int __s32 ;

/* Variables and functions */
 size_t HFLIP_IDX ; 
 int FUNC0 (struct sd*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int*) ; 
 int FUNC2 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, __s32 val)
{
	int err;
	u8 reg;
	__s32 vflip;
	struct sd *sd = (struct sd *) gspca_dev;
	struct s5k83a_priv *sens_priv = sd->sensor_priv;

	sens_priv->settings[HFLIP_IDX] = val;

	FUNC1(gspca_dev, &vflip);

	err = FUNC0(sd, &reg);
	if (err < 0)
		return err;
	if (reg) {
		val = !val;
		vflip = !vflip;
	}

	err = FUNC2(gspca_dev, vflip, val);
	return err;
}